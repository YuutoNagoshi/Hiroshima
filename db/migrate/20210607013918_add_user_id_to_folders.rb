class AddUserIdToFolders < ActiveRecord::Migration[6.1]
  def change
    add_column :folders, :user_id, :integer
  end
end
