class LikesController < ApplicationController
  def create
    @likes = Like.new
  end

  def destroy
    @likes
  end
end
