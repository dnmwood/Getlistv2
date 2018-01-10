class User < ApplicationRecord
  has_secure_password
  before_save { email.downcase! }

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }

  has_many :setlists
  has_many :songs
end
