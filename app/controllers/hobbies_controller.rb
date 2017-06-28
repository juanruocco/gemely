class HobbiesController < ApplicationController
  def new
  end

  def create
    hobby = Hobby.new(hobby_params)
    if current_user
      current_user.hobbies << hobby
      redirect_to '/'
    else
      redirect_to '/'
    end

  end


  def destroy
  end

  private
  def hobby_params
    params.require(:hobby).permit(:name, :like)
  end
end
