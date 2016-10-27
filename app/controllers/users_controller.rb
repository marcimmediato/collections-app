class UsersController < ApplicationController
  before_action :require_logged_in
  skip_before_action :require_logged_in, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.create(params[:user])
  end

  def edit
  end

  def destroy
  end

  def show
    @user = User.find(current_user)
    @owner = Owner.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
