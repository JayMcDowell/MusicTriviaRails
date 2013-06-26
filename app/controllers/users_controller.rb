class UsersController < ApplicationController

    def create
      user = User.find_by_initials(params[:user][:initials])
      if user.blank?
        user = User.create(params[:user])
        session[:new_user] = true
      end
      session[:user_id] = user.id
      redirect_to quizzes_path
    end
end
