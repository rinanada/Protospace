class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like =Like.create(user_id: current_user.id, prototype_id: params[:id])
    @likes = Like.where(prototype_id: params[:id])
    @prototype = Prototype.find(params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id).destroy
    @likes = Like.where(prototype_id: params[:id])
    @prototype = Prototype.find(params[:id])
  end
end
