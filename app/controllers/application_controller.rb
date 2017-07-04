class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :logged_in_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def authorize
    redirect_to '/login' unless current_user
  end

  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        #store_location
        #flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end



  helper_method :current_user
  helper_method :logged_in?


end
