class RemoveExtraneousColumnsFromRecipeIngredient < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipe_ingredients, :volume, :boolean
    remove_column :recipe_ingredients, :weight, :boolean
    remove_column :recipe_ingredients, :count, :boolean
    remove_column :recipe_ingredients, :dash, :boolean
  end
end
