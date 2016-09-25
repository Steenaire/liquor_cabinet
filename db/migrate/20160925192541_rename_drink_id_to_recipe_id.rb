class RenameDrinkIdToRecipeId < ActiveRecord::Migration[5.0]
  def change
    remove_column :visits, :drink_id, :integer
    add_column :visits, :recipe_id, :integer
  end
end
