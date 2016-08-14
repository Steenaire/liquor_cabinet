class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :garnish
      t.boolean :volume
      t.boolean :weight
      t.boolean :count

      t.timestamps
    end
  end
end
