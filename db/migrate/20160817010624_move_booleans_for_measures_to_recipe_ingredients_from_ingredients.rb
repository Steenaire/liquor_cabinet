class MoveBooleansForMeasuresToRecipeIngredientsFromIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :volume, :boolean
    remove_column :ingredients, :weight, :boolean
    remove_column :ingredients, :count, :boolean
    remove_column :ingredients, :dash, :boolean

    add_column :recipe_ingredients, :volume, :boolean
    add_column :recipe_ingredients, :weight, :boolean
    add_column :recipe_ingredients, :count, :boolean
    add_column :recipe_ingredients, :dash, :boolean
  end
end
