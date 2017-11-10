class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }

  has_many :setlists
  has_many :songs
end
