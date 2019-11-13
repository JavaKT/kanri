class ItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item  ,except: [:index, :new, :create]
  
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

    def show
      
    end

    def edit

    end

    def update
      @item.update(item_params)
      redirect_to action: :show
    end

    def destroy
  
      @item.destroy
      redirect_to action: :index
    end


    private

    def item_params
      params.require(:item).permit(:name, :image, :price, :bugdet, :color, :on_air, :comment).merge(user_id: current_user.id)
    end
 
    def set_item
      @item = Item.find(params[:id])
    end
  end

