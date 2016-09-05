class AddCardImageToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :card_image, :string
  end
end
