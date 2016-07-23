class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @prototypes = User.find(params[:id]).prototypes.includes(:capture_images).order("created_at DESC").page(params[:page]).per(4)
    @group = User.find(params[:id]).group
    @profile = User.find(params[:id]).profile
    @works = User.find(params[:id]).works
  end

  def edit
  end

  def update
    current_user.update(user_params)
    sign_in(current_user, bypass: true)
    redirect_to root_path, notice: 'Your profile has been edited successfully'
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :group, :profile, :works)
  end
end
