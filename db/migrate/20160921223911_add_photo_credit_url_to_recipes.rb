class AddPhotoCreditUrlToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :photo_credit_url, :string
  end
end
