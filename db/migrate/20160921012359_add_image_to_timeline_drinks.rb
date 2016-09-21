class AddImageToTimelineDrinks < ActiveRecord::Migration[5.0]
  def change
    add_column :timeline_drinks, :image, :string
  end
end
