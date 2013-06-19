class SiteController < ApplicationController

  def takequiz
    # if post request record answer
    # increment number of questions completed
    # show result
    # percentage of users who got this right/wrong
    # get a new question unless user is finished
    quiz = Quiz.find_by_name(session[:quiz_preference])
    if request.post?
      # if correct @message = correct  else @message = wrong
      # get the question that we just asked
      # check the correct answer against what the user guessed (in params[:answer])
      # spit out the right/wrong percentage  (need to set that to an @ variable so that it is useful)
      # set up an @message that says "you got the question right/wrong"
      # if there is an @message display it (just like user) otherwise don't do anything.
    else
      @question = quiz.questions.where(:quiz_level => session[:level_preference]).sample
    end
  end
end

