class CategoriesController < ApplicationController
  def show
    @categoies = Category.find(params[:id]).sureds.recent
  end
end
