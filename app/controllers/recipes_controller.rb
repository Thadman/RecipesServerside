class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show 
    render json: @recipe
  end

  def create
    Recipe.create(recipe_params)
    render json: "recipe created", status: 200
  end

  def update
    @recipe.update(recipe_params)
    render json: "recipe updated", created: 200
  end

  def destroy
    @recipe.destroy
    render json: "recipe deleted", status: 200
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cooking_time, :ingredients, :method)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

end
