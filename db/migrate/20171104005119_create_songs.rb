class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :user_id
      t.integer :setlist_id
      t.integer :minutes
      t.integer :seconds

      t.timestamps
    end
  end
end
