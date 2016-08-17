class AddBrandIdColumnToCabinetsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :cabinets, :brand_id, :integer
  end
end
