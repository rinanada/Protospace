class Prototypes::NewestController < ApplicationController
  def index
    @prototypes = Prototype.including_user_images.order("created_at DESC").page(params[:page]).per(8)
  end
end
