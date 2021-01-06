class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  has_many :songs
  # has_many :messages
  has_many :setlists
  has_many :tags
  has_many :genres
end
