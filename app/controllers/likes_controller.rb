class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like =Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
    @prototype = Prototype.find(params[:prototype_id])
    # redirect_to prototype_path(@prototype)
  end

  def destroy
    Like.find_by(prototype_id: params[:prototype_id], user_id: current_user.id).destroy
    @likes = Like.where(prototype_id: params[:prototype_id])
    @prototype = Prototype.find(params[:prototype_id])
    # redirect_to prototype_path(@prototype)
  end
end
