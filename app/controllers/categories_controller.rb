class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end 

  def create
    Category.new(params)
    redirect_to(categories_path)
  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to(categories_path)
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    category = Category.find(params[:id])
    category.update(category_params)
    redirect_to(categories_path)
  end

  private

  def category_params
    #permits these elements in the params to be accessed
    params.require(:category).permit(:title)
  end

end