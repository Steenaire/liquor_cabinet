class AddAuthorToUsersAndDraftToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :type, :string
    add_column :blogs, :draft, :boolean
  end
end
