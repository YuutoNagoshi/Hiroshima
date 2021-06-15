class CreateSecondFolders < ActiveRecord::Migration[6.1]
  def change
    create_table :second_folders do |t|
      t.string :two_title
      t.string :two_body
      t.string :two_image
      t.integer :user_id
      t.integer :folder_id

      t.timestamps
    end
  end
end
