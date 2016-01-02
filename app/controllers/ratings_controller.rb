class RatingsController < ApplicationController

  # def new
  #   @recipe = Recipe.new
  #   @categories = Category.all
  # end 

  def create
    Recipe.find(params[:rating][:recipe_id]).ratings.create(rating_params)
    redirect_to(recipe_path(params[:rating][:recipe_id]))
  end

  # def show
  #   @recipe = Recipe.find(params[:id])
  # end

  # def destroy
  #   recipe = Recipe.find(params[:id])
  #   recipe.destroy
  #   redirect_to(recipes_path)
  # end

  private

  def rating_params
    #permits these elements in the params to be accessed
    params.require(:rating).permit(:rating_value, :recipe_id)
  end

end