class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :edit, :update, :destroy]

  def index
    @search = Tweet.ransack(params[:q])
    @tweet = @search.result.order('datetime DESC')
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
    @messages = @tweet.messages
    @message = Message.new
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

  def set_user
    @user = User.find(params[:user_id])
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :type_name, :datetime, :quantity_id, :size_id, :weather_id, :wind_id, :feed, :address, :latitude, :longitude, :description).merge(user_id: current_user.id)
  end
end
