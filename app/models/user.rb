class User < ApplicationRecord
  has_many :songs
  # has_many :messages
  # has_many :setlists
  has_many :tags
  has_many :genres
end
