class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    # @prototypes = Prototype.where(user_id: currentuser.id).page[:params].page(5)


    @prototypes = current_user.prototypes.order("created_at DESC")
    # .page(params[:page]).per(5)
    @group = current_user.group
    @profile = current_user.profile
    @works = current_user.works
  end

  def edit
  end

  def update
    binding.pry
    current_user.update(user_params)
    binding.pry
    sign_in(current_user, bypass: true)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :group, :profile, :works)
  end
end
