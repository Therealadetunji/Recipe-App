class RenameColumnsFoodsRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipe_foods, :recipes_id, :recipe_id
    rename_column :recipe_foods, :foods_id, :food_id
  end
end
