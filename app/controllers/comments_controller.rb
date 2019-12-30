class CommentsController < ApplicationController

  def create
    @comment = Comment.create(text: comment_params[:text], item_id: comment_params[:item_id], user_id: current_user.id)
    respond_to do |format|
      format.json
    end
  end
  
  def destroy
    @item = Item.find(params[:item_id])
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
    params.permit(:text, :item_id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
