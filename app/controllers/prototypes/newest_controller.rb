class Prototypes::NewestController < ApplicationController

  def index
    @prototypes = Prototype.includes(:user, :capture_images).order("created_at DESC").page(params[:page]).per(8)
  end

end
