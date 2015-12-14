class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @category_id = params[:category_id]
  end 

  def create
    Category.find(params[:recipe][:category_id]).recipes.create(recipe_params)
    redirect_to(category_path(params[:recipe][:category_id]))
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to(recipes_path)
  end

  private

  def recipe_params
    #permits these elements in the params to be accessed
    params.require(:recipe).permit(:title, :description, :ingredients, :method, :image, :category_id)
  end

end