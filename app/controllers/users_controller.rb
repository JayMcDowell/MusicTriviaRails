class UsersController < ApplicationController

    def create
      # binding.pry
      user = User.find_or_create_by_initials(params[:user][:initials])
      redirect_to quizzes_url
    end

end
