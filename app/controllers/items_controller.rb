class ItemsController < ApplicationController
    before_action :authenticate_user!
  
    def index
    end
  
    def new
      @item = Item.new
    end
  
    def create
      @item = Item.new(item_params)
    end
  
    def show
      @item = Item.find(item_params)
    end

    private

    def item_params
    params.require(:item).permit(:name, :price, :budeget)
    end

end
