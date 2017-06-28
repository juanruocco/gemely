class HobbiesController < ApplicationController
  def new
  end

  def create
    hobby = Hobby.new(hobby_params)
    hobby.save
    redirect_to '/hobby'

  end


  def destroy
  end

  private
  def hobby_params
    params.require(:hobby).permit(:name)
  end
end
