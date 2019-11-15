class ItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item  ,except: [:index, :new, :create, :search]
  
    def index
      @items = Item.includes(:user)
    
    end
  
    def new
      @item = Item.new
    end
  
    def create
      @item = Item.new(item_params)
      if @item.save
      redirect_to action: :index
      else  
      redirect_to action: :new
      end
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

    def search
      @items = Item.search(params[:keyword])
    end


    private

    def item_params
      params.require(:item).permit(:name, :price, :bugdet, :color, :on_air, :comment, :video, :image, :category_id).merge(user_id: current_user.id)
    end
 
    def set_item
      @item = Item.find(params[:id])
    end
  end

