class CreateTimelineDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :timeline_drinks do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.timestamps
    end
  end
end
