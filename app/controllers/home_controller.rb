class HomeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    render layout: "application"
    @user = current_user
  end

  def welcome
    if !user_signed_in?
      render new_user_session_path
      flash[:alert] = "You must be signed in to do that!"
    end
    @user = current_user
    render layout: "application"
  end

end
