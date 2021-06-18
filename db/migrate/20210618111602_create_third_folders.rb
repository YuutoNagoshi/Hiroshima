class CreateThirdFolders < ActiveRecord::Migration[6.1]
  def change
    create_table :third_folders do |t|
      t.string :three_title
      t.string :three_body
      t.string :three_image
      t.integer :user_id
      t.integer :folder_id
      t.string :string

      t.timestamps
    end
  end
end
