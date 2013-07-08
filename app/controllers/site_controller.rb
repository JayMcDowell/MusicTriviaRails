class SiteController < ApplicationController

  def takequiz
    # @message =
    # if post request record answer
    # increment number of questions completed
    # show result
    # percentage of users who got this right/wrong
    # get a new question unless user is finished
    quiz = Quiz.find_by_name(session[:quiz_preference])
    if request.post?
      @question = Question.find(params[:question_id])# get the question that we just asked
      unless params[:answer]
        @message = "You must provide an answer!"
        render :takequiz and return
      end

        answer = @question.send(params[:answer].to_sym)
      if answer == @question.correct_answer
        @message = "That is correct!      "
        session[:score] += 10
        correct_answer = true
        user_correct_answers = Answer.where(question_id: @question.id, correct: true).count
        user_answers = Answer.where(question_id: @question.id).count
        if user_correct_answers > 0
          percentage = user_correct_answers.to_f / user_answers.to_f
          @message << "<br/>#{(percentage * 100).to_i}% of users got this question right."
        else
          @message << "<br/>No previous user got that question right!"
        end
      else
        @message = "That is a wrong guess.<br/>The correct answer is #{params[:correct_answer]}"
        correct_answer = false
        user_incorrect_answers = Answer.where(question_id: @question.id, correct: false).count
        user_answers = Answer.where(question_id: @question.id).count
        if user_incorrect_answers > 0
          percentage = user_incorrect_answers.to_f / user_answers.to_f
          @message << "<br/>#{(percentage * 100).to_i}% of users got this question wrong."
        else
          @message << "<br/>No previous user got that question wrong....loser."
        end
      end
      Answer.create(question_id: @question.id, user_id: session[:user_id], correct: correct_answer)
      if session[:num_question] == 10
        @message << "<br/><br/>Your final score is #{session[:score]} out of a possible #{session[:num_question] * 5}"
        if session[:score] >99
          @message << "<br/> You rock!  You didn't miss a beat."
        elsif session[:score] > 89
          @message << "<br/> Very nice, you know your music trivia."
        elsif session[:score] > 59
          @message << "<br/> Good job.  You know more than the average 'Joe'."
        elsif session[:score] > 39
          @message << "<br/> Keep listenin', you've got some catching up to do."
        else
          @message << "<br/> Either you are a teenager or you weren't paying attention."
        end
        @message << "<br/> Would you like to <a href='/quizzes' >play again?</a>"
        @question = nil
        render :takequiz and return
      else
        @message << "<br/>Your score is #{session[:score]} out of a possible #{session[:num_question] * 10}."
      end
      session[:num_question] += 1
    end
    if session[:level_preference] == "medium"
      @question = quiz.questions.sample
    else
      @question = quiz.questions.where(:quiz_level => session[:level_preference]).sample
    end
  end
end

