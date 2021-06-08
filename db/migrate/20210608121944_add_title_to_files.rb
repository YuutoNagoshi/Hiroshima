class AddTitleToFiles < ActiveRecord::Migration[6.1]
  def change
    add_column :files, :title, :string
  end
end
