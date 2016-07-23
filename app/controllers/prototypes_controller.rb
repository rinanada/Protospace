class PrototypesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :delete]

  def index
    @prototypes = Prototype.includes(:user, :capture_images).order("created_at DESC").page(params[:page]).per(4)
  end

  def new
    @prototype = Prototype.new
    @prototype.capture_images.build
  end

  def create
    @prototype = Prototype.new(proto_params)
    if @prototype.save
      redirect_to ({action: :index}), notice: 'prototype has been created successfully'
    else
      redirect_to ({action: :new}), alert: 'error'
    end
  end

  def show
    @prototype = Prototype.includes(:user, :capture_images, :comments).find(params[:id])
    @sub_images = @prototype.capture_images.sub
  end

  def edit
    @prototype = Prototype.find(params[:id])
    @prototype.capture_images.build
  end

  def update
    prototype = Prototype.find(params[:id])
    if user_signed_in? && current_user.id == prototype.user_id
      prototype.update(proto_params)
      redirect_to ({action: :index}), notice: 'prototype has been edited successfully'
    else
      redirect_to ({action: :edit}), alert: 'error has occured'
    end
  end

  def destroy
    if user_signed_in && current_user.id == prototype.user_id
      Prototype.find(params[:id]).destroy
      redirect_to ({action: :index}), notice: 'prototype has been deleted successfully'
    else
       redirect_to ({action: :index}), alert: 'error has occured'
    end
  end

  private

  def proto_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, capture_images_attributes: [:type,:content]).merge(user_id: current_user.id)
  end
end
