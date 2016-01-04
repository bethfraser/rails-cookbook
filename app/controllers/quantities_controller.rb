class QuantitiesController < ApplicationController

  def index
    @quantities = Quantity.all
  end

  def new
    @quantity = Quantity.new
  end 

  def create
    Quantity.create(quantity_params)
    redirect_to(quantities_path)
  end

  def show
    load_quantity
  end

  def destroy
    quantity = Quantity.find(params[:id])
    quantity.destroy
    redirect_to(quantities_path)
  end

  def edit
    load_quantity
  end

  def update
    quantity = Quantity.find(params[:id])
    quantity.update(quantity_params)
    redirect_to(quantities_path)
  end

  private

  def quantity_params
    #permits these elements in the params to be accessed
    params.require(:quantity).permit(:ingredient_id, :recipe_id, :amount, :unit, :preparation)
  end

  def load_quantity
    @quantity = Quantity.find(params[:id])
  end

end