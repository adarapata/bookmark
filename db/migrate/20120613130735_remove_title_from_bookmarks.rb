class RemoveTitleFromBookmarks < ActiveRecord::Migration
  def up
    remove_column :bookmarks, :title
  end

  def down
    add_column :bookmarks, :title, :string
  end
end
