class CommentsController < ApplicationController
  before_action :set_item

  def create
    @comment = Comment.create(comment_params)
      if @comment.save
        redirect_to comments_item_path(@item)
      else
      render template: "items/comment"
      end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user_id == current_user.id
      @comment.destroy
      redirect_to comments_item_path(@item)
    else
      redirect_to comments_item_path(@item)
    end  
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
