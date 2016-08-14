class CreateCabinets < ActiveRecord::Migration[5.0]
  def change
    create_table :cabinets do |t|
      t.integer :user_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
