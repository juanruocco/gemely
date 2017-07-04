class SessionsController < ApplicationController
  def new
  end

  def create
    params_login = params[:session]

    #debugger
    user = User.find_by(email: params_login[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params_login[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
