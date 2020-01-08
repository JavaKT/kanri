class ImagesController < ApplicationController
  before_action :authenticate_user!

  def new_image
    @item = Item.find(params[:id])
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to image_path(@image.item_id)
    else
      render :new_image
    end
  end 

  def show
    @item = Item.find(params[:id])
    @images = Image.where(item_id: params[:id])
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(update_params)
      redirect_to image_path(@image.item_id)
    else
      render :edit
    end

  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
      redirect_to image_path(@image.item_id)
  end


  private

  def update_params
    params.require(:image).permit(:id,:image)
  end

  def image_params
    params.require(:image).permit(:item_id,:image)
  end

end
