class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @items = Item.where(user_id:params[:id])
  end

  def search_items
    @user = User.find(params[:id])
    @items = Item.search(params[:keyword]).where(user_id:params[:id])

  end

end
