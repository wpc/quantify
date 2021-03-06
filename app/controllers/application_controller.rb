class ApplicationController < ActionController::Base
  protect_from_forgery


  before_filter :require_user

  protected
  
  def require_user
    @user = User.find_by_id(session[:user_id])
    redirect_to(new_session_url) unless @user
  end
end
