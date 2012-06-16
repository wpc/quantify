class SessionsController < ApplicationController
  skip_before_filter :require_user
  def new
    @user = User.new
    render :new
  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash[:login_error] = "Wrong user email or password"
      redirect_to new_session_url
    end
  end

end
