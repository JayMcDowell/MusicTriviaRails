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
        question = Question.find(params[:question_id])# get the question that we just asked
        answer = question.send(params[:answer].to_sym)
      if answer == question.correct_answer
        @message = "That is correct!"
        session[:score] += 5
        correct_answer = true
        user_correct_answers = Answer.where(question_id: question.id, correct: true).count
        user_answers = Answer.where(question_id: question.id).count
        if user_answers > 0
          if user_correct_answers > 0
            percentage = user_correct_answers.to_f / user_answers.to_f
            @message << "#{(percentage * 100).to_i}% of users got this question right."
          else
            @message << "No previous user got this question right"
          end
        end
      else
        @message = "That is a wrong guess.<br/>The correct answer is #{params[:correct_answer]}"
      end
      if session[:num_question] == 20
        @message << "<br/><br/>Your final score is #{session[:score]} out of a possible #{session[:num_question] * 5}"
        if session[:score] >99
          @message << "<br/> You rock!  You didn't miss a beat."
        elsif session[:score] > 84
          @message << "<br/> Very nice, you know your music trivia."
        elsif session[:score] > 54
          @message << "<br/> Good job.  You know more than the average 'Joe'."
        elsif session[:score] > 39
          @message << "<br/> Keep listenin', you've got some catching up to do."
        else
          @message << "<br/> Either you are a teenager or you weren't paying attention."
        end
        return
      else
        @message << "<br/>Your score is #{session[:score]} out of a possible #{session[:num_question] * 5}."
      end
      session[:num_question] += 1

      # if @question.correct_answer = @answer
      #   @message = "That is correct!"

      # check the correct answer against what the user guessed (in params[:answer])
      # spit out the right/wrong percentage  (need to set that to an @ variable so that it is useful)
      # set up an @message that says "you got the question right/wrong"
      # if correct @message = correct  else @message = wrong
      # if there is an @message display it (just like user) otherwise don't do anything.


    end
      if session[:level_preference] == "medium"
        @question = quiz.questions.sample
      else
        @question = quiz.questions.where(:quiz_level => session[:level_preference]).sample
      end
  end
end

