class PrototypesController < ApplicationController
  def index
  end

  def new
    # binding.pry
    @prototype = Prototype.new
    @prototype.capture_images.build
  end

  def create
    @prototype = Prototype.new(proto_params)

    if @prototype.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
  end

  private

    def proto_params
      params.require(:prototype).permit(:title, :catch_copy, :concept, capture_images_attributes: [:type,:content]).merge(user_id: current_user.id)
    end
end
