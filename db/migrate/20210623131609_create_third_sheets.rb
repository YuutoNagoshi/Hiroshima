class CreateThirdSheets < ActiveRecord::Migration[6.1]
  def change
    create_table :third_sheets do |t|
      t.string :three_title
      t.string :three_body
      t.string :three_image
      t.integer :user_id
      t.integer :folder_id
      t.integer :second_folder_id
      t.timestamps
    end
  end
end
