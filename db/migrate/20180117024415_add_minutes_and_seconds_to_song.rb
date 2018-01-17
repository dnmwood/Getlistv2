class AddMinutesAndSecondsToSong < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :minutes, :integer
    add_column :songs, :seconds, :integer
  end
end
