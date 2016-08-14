class CreateRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
      t.decimal :quantity, precision: 10, scale: 2
      t.boolean :garnish

      t.timestamps
    end
  end
end
