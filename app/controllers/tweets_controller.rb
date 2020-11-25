class TweetsController < ApplicationController
   before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweet = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @tweet.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :type_name, :datetime, :quantity_id, :size_id, :weather_id, :wind_id, :feed, :address, :latitude, :longitude, :description).merge(user_id: current_user.id)
  end

end
