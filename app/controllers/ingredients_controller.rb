class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end 

  def create
    Ingredient.create(ingredient_params)
    redirect_to(ingredients_path)
  end

  def show
    load_ingredient
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    redirect_to(ingredients_path)
  end

  def edit
    load_ingredient
  end

  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update(ingredient_params)
    redirect_to(ingredients_path)
  end

  private

  def ingredient_params
    #permits these elements in the params to be accessed
    params.require(:ingredient).permit(:name)
  end

  def load_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

end