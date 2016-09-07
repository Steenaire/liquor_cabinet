class AddCommentsToTimelineDrinks < ActiveRecord::Migration[5.0]
  def change
    add_column :timeline_drinks, :comment, :text
  end
end
