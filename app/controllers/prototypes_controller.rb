class PrototypesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :delete]

  def index
    @prototypes = Prototype.includes(:user).order("created_at DESC").page(params[:page]).per(4)
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
  end

  private

  def proto_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, capture_images_attributes: [:type,:content]).merge(user_id: current_user.id)
  end
end
