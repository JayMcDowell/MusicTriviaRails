class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
    @new_user = session[:new_user]
    session[:new_user] = nil
  end

  def create
    # binding.pry
    session[:quiz_preference] = params[:quiz_preference]
    session[:level_preference] = params[:level_preference]
  end
end

