class Song < ApplicationRecord
  belongs_to :user
  belongs_to :setlist
end
