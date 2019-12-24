class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to "/items/#{comment.item.id}" 
  end
  
  def index
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end

end
