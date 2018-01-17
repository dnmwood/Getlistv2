class RemoveDurationFromSongs < ActiveRecord::Migration[5.1]
  def change
    remove_column :songs, :duration
  end
end
