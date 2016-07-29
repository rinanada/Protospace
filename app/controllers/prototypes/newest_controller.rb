class Prototypes::NewestController < ApplicationController

  def index
    @prototypes = Prototype.including.order("created_at DESC").page(params[:page]).per(8)
  end

end
