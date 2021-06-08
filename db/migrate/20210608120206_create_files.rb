class CreateFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :files do |t|
      t.string :title

      t.timestamps
    end
  end
end
