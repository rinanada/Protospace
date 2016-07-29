class NewestsController < ApplicationController
before_action :authenticate_user!

  def index
    @prototypes = Prototype.with_proto.order("created_at DESC").page(params[:page]).per(8)
  end

end
