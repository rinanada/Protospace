class NewestsController < ApplicationController
before_action :authenticate_user!

  def index
    @prototypes = Prototype.includes(:user, :capture_images).order("created_at DESC").page(params[:page]).per(4)
  end

end
