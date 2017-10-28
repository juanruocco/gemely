class SportsController < ApplicationController
  def new
  end

  def create
    sport = Sport.new(sport_params)
    sport.save
    redirect_to '/sport'

  end

  def destroy
  end

  private
  def sport_params
    params.require(:sport).permit(:name, :type)
  end

end
