class ImagesController < ApplicationController

  def show
    @images = Image.where(item_id: params[:id])
  end



end
