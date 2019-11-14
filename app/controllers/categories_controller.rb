class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def show
    @items = Item.includes(:user)
  end
end

