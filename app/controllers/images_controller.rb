class ImagesController < ApplicationController
  before_action :authenticate_user!

  def show
    @item = Item.find(params[:id])
    @images = Image.where(item_id: params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(update_params)
      redirect_to image_path(@item)
    else
      render :edit
    end

  end


  private

  def update_params
    params.require(:item).permit(images_attributes: [:id ,:image])
  end


end
