class AddBrandIdColumnToRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :recipe_ingredients, :brand_id, :integer
  end
end
