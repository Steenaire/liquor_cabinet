class AddAttributionToPhotosForRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :photo_credit, :string
  end
end
