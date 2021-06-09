class CreateSheets < ActiveRecord::Migration[6.1]
  def change
    create_table :sheets do |t|
      t.string :title
      t.string :body
      t.string :image
      t.integer :user_id
      t.timestamps
    end
  end
end
