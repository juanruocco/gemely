class WelcomeController < ApplicationController
  def index
    #debugger
    if current_user
      redirect_to '/compatibility'
    else
      redirect_to '/login'
    end
  end
end
