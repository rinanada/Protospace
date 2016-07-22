class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @prototypes = current_user.prototypes.order("created_at DESC").page(params[:page]).per(4)
    @group = current_user.group
    @profile = current_user.profile
    @works = current_user.works
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
