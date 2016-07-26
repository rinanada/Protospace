class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :user, only: [:show, :edit, :update]

  def show
    @prototypes = User.find(params[:id]).prototypes.includes(:capture_images).order("created_at DESC").page(params[:page]).per(4)
    @pro_img = User.find(params[:id]).pro_img
    @group = User.find(params[:id]).group
    @profile = User.find(params[:id]).profile
    @works = User.find(params[:id]).works
  end

  def edit
  end

  def update
    if current_user.id == @user.id && current_user.update(user_params)
      sign_in(current_user, bypass: true)
      redirect_to root_path, notice: 'Your profile has been edited successfully'
    else
      redirect_to edit_user_path, alert: "error has occured"
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :pro_img, :image_cache, :group, :profile, :works)
  end

  def user
    @user = User.find(params[:id])
  end
end
