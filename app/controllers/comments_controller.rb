class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text).merge(user_id: current_user.id)
  end
end
