class ShoppingListsController < ApplicationController
  def index
    @user = current_user
    @foods = @user.foods.all
    @recipes = @user.recipes.all
    @list = []
  end
end
