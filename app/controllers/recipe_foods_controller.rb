class RecipeFoodsController < ApplicationController
  
  def new
    @recipe_food = RecipeFood.new
    @recipe = Recipe.find(params[:recipe_id])
    @foods = current_user.foods
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.new(recipe_food_params)

    if @recipe_food.save
      redirect_to recipe_path(@recipe)
    else
      render :new, status: 'Error occured with Recipe Food!'
    end
  end

  def destroy
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.destroy
    redirect_to recipe_path(params[:recipe_id])
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end
