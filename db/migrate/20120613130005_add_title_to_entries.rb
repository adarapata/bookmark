class AddTitleToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :title
  end
end
