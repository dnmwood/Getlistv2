class Song < ApplicationRecord
  belongs_to :user
  belongs_to :setlist

  validates :title, length: { minimum: 1, message: "ERROR MESSAGE" }
end
