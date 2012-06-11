class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :pass
      t.integer :lastupdate

      t.timestamps
    end
  end
end
