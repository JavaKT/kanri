class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show
    @items = Item.where(user_id:params[:id])
  end

  def search_items
    @items = Item.search(params[:keyword]).where(user_id:params[:id])
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
  
end
