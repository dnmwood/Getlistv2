class User < ApplicationRecord
  has_secure_password

  has_many :setlists
  has_many :songs
end
