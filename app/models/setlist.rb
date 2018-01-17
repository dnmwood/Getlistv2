class Setlist < ApplicationRecord
  belongs_to :user
  has_many :songs

  validates :title, length: { minimum: 1, message: "ERROR MESSAGE" }
end
