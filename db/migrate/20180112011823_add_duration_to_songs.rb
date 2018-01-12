class AddDurationToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :duration, :integer
  end
end
