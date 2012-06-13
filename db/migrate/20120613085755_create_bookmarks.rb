class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.string :comment
      t.integer :entry_id

      t.timestamps
    end
    add_index :bookmarks, :entry_id
  end
end
