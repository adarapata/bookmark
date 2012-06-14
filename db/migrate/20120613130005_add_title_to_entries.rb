class AddTitleToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :title, :string
    add_index :entries, :title
  end 
end
