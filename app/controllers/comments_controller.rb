class CommentsController < ApplicationController

  def create
    gon.current_user_id = current_user.id
    @comment = Comment.create(comment_params)
    respond_to do|format|
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
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
