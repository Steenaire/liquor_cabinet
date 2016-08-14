class RemoveGarnishColumnFromIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :garnish, :boolean
  end
end
