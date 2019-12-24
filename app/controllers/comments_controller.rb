class CommentsController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @comment = Comment.create(comment_params)
      if @comment.save
        redirect_to comments_item_path(@item)
      else
      render template: "items/comment"
      end
  end
  
  def destroy
    @item = Item.find(params[:item_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_item_path(@item)
  
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end

end
