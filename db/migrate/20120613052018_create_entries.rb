class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :url

      t.timestamps
    end
    add_index :entries, :url
  end
end
