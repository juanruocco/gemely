class LikesController < ApplicationController
  def new
  end

  def create
    like = Like.new(like_params)
    if current_user
      current_user.likes << like
      redirect_to '/likes'
    else
      redirect_to '/'
    end
  end


  def destroy
  end

  private
  def like_params
    params.require(:like).permit(:name, :like)
  end
end
