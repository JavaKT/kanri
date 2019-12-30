class ItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item  ,except: [:index, :new, :create, :search]
  
    def index
      @items = Item.includes(:user,:item_image)
    
    end
  
    def new
      @item = Item.new
      @item.images.build
    end
  
    def create
      @item = @item.images.build(item_params)
      respond_to do |format|
        if @item.save
          params[:image][:image].each do |a|
            @item.image.create(image: image, item_id: @item.id)
          end
         format.html { redirect_to root_path}
       else
          @item.images.build
         format.html { render action: 'new' }
       end
     end
   end

    def show
      
    end

    def edit

    end

    def update
      if @item.user_id == current_user.id
        @item.update(item_params)
        if @item.update_attributes(item_params)
          redirect_to item_path(@item)
        else
        render :edit
        end
      else
        redirect_to item_path(@item)
      end
    end

    def destroy
      if @item.user_id == current_user.id
        @item.destroy
        redirect_to action: :index
      else
        redirect_to action: :index
      end
    end

    def search
      @items = Item.search(params[:keyword])
      respond_to do |format|
        format.html 
        format.json 
      end
    end

    def comments
      gon.current_user_id = current_user.id
      @item = Item.find(params[:id])
      @comment = Comment.new
      @comments = @item.comments.includes(:user)
    end



    private

    def item_params
      params.require(:item).permit(:name, :price, :budget, :color, :on_air, :discription, :video, :category,images_attributes: [:image]).merge(user: current_user)
    end
 
    def set_item
      @item = Item.find(params[:id])
    end

  end

