class RatingsController < ApplicationController


  def create
    Recipe.find(params[:rating][:recipe_id]).ratings.create(rating_params)
    redirect_to(recipe_path(params[:rating][:recipe_id]))
  end

  private

  def rating_params
    #permits these elements in the params to be accessed
    params.require(:rating).permit(:rating_value, :recipe_id)
  end

end