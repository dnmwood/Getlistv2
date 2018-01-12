class RemoveMinutesAndSecondsFromSongs < ActiveRecord::Migration[5.1]
  def change
    remove_column :songs, :minutes
    remove_column :songs, :seconds
  end
end
