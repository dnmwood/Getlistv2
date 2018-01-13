class Setlist < ApplicationRecord
  belongs_to :user

  validates :title, length: { minimum: 1, message: "ERROR MESSAGE" }
end
