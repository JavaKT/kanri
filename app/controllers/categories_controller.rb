class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def show
    category = Category.find(params[:id])
    @items = category.items
  end
end

