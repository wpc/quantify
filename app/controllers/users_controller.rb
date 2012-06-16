class UsersController < ApplicationController
  skip_before_filter :require_user

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render "sessions/new"
    end
  end
end
