class ItemsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @items = Item.includes(:user)

    end
  
    def new
      @item = Item.new
    end
  
    def create
      @item = Item.new(item_params)
      @item.save
        redirect_to action: :index

    end
  

    private

    def item_params
      params.require(:item).permit(:name, :image, :price, :bugdet, :color, :on_air, :comment).merge(user_id: current_user.id)
    end
 
  end

