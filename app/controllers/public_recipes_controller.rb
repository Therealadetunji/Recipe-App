class PublicRecipesController < ApplicationController
  def index
    @user = current_user
    @recipes = Recipe.all
    # @recipe_foods = @recipe.recipe_foods.all
  end

  def show; end
end
