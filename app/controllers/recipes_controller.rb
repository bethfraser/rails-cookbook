class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @categories = Category.all
    @keywords = Keyword.all
  end 

  def create
    Category.find(params[:recipe][:category_id]).recipes.create(recipe_params)
    redirect_to(category_path(params[:recipe][:category_id]))
  end

  def show
    @recipe = Recipe.find(params[:id])
    @rating = Rating.new
    @keywords = Recipe.find(params[:id]).keywords
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(recipes_path)
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @categories = Category.all
    @keywords = Keyword.all
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    params[:recipe][:keyword_ids] ||= []
    keyword = Keyword.find(params[:recipe][:keyword_ids]) 
    recipe.keywords = keyword
    redirect_to(recipes_path)
  end

  private

  def recipe_params
    #permits these elements in the params to be accessed
    params.require(:recipe).permit(:title, :description, :ingredients, :method, :image, :category_id, { :keywords => [] })
  end

end