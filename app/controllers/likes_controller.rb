class LikesController < ApplicationController
  before_action :set_variables, only: [:create, :destroy]
  def create
    @like = current_user.likes.create(tweet_id: params[:tweet_id])
  end

  def destroy
    @like = Like.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
    @like.destroy
  end

  def set_variables
    @tweet = Tweet.find(params[:tweet_id])
  end
end
