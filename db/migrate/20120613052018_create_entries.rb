class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
    #add_index :entries, :url, :title
  end
end
