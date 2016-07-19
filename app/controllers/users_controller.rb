class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def update
    current_user.update(user_params)
    sign_in(current_user, bypass: true)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :passwor)
  end
end
