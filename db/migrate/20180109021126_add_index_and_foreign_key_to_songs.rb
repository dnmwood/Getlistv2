class AddIndexAndForeignKeyToSongs < ActiveRecord::Migration[5.1]
  def change
    add_index :songs, :user_id
    add_foreign_key :songs, :users
  end
end
