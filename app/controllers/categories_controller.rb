class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def category_1
    @items = Item.where(catogory: 1)
  end
end

