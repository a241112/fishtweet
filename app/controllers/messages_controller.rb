class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message, name: @message.user.name, time: @message.created_at.strftime("%Y/%m/%d %H:%M")
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to user_tweet_path(current_user.id,params[:tweet_id])
  end

  private

  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
