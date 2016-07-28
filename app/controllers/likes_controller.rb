class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_prototype

  def create
    @prototype.likes.create(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

  def destroy
    @prototype.likes.find_by(user_id: current_user.id).destroy
    @prototype.reload
  end

  private
  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end

end
