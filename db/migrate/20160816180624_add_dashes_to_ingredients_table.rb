class AddDashesToIngredientsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :dash, :boolean
  end
end
