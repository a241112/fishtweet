class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :ensure_current_user, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  def ensure_current_user
    redirect_to user_path(current_user.id) if current_user.id != params[:id].to_i
  end
end
