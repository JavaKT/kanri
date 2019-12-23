class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def category_1
    @items = Item.where(category: 1)
  end

  def category_2
    @items = Item.where(category: 2)
  end

  def category_3
    @items = Item.where(category: 3)
  end
end

