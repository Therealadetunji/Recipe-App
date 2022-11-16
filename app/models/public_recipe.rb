class PublicRecipe < ApplicationRecord
  after_save :foodcounter

  def increase_food_counter
    food.increment!(:foodcounter)
  end

  def recent_public_recipe
    recipe.order(created_at: DESC).limit(3)
  end
end
