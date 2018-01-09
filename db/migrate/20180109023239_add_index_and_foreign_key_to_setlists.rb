class AddIndexAndForeignKeyToSetlists < ActiveRecord::Migration[5.1]
  def change
    add_index :setlists, :user_id
    add_foreign_key :setlists, :users
  end
end
