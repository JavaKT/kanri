class ImagesController < ApplicationController
  before_action :authenticate_user!

  def show
    @images = Image.where(item_id: params[:id])
  end


end
