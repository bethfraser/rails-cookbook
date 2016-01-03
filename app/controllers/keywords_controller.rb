class KeywordsController < ApplicationController

  # def new
  #   @recipe = Recipe.new
  #   @categories = Category.all
  # end 
  def index
    @keywords = Keyword.all
  end

  def new
    @keyword = Keyword.new
  end 

  def create
    Keyword.create(keyword_params)
    redirect_to(keywords_path)
  end

  def edit
    @keyword = Keyword.find(params[:id])
  end

  def update
    keyword = Keyword.find(params[:id])
    keyword.update(keyword_params)
    redirect_to(keywords_path)
  end

  def destroy
    keyword = Keyword.find(params[:id])
    keyword.destroy
    redirect_to(keywords_path)
  end

  # def show
  #   @recipe = Recipe.find(params[:id])
  # end


  private

  def keyword_params
    #permits these elements in the params to be accessed
    params.require(:keyword).permit(:title)
  end

end