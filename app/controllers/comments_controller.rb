class CommentsController < ApplicationController
  def create
    binding.pry
    @comment = Comment.new(comment_params)
    @comment.save
    # redirect_to prototype_path(@comment.prototype)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text).merge(prototype_id: params[:prototype_id], user_id: current_user.id)
  end
end
