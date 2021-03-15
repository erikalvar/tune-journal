class Song < ApplicationRecord
  has_many :song_tags
  has_many :tags, through: :song_tags
  has_many :song_genres
  has_many :genres, through: :song_genres
  belongs_to :user
  has_many :setlist_songs
  has_many :setlists, through: :setlist_songs
  has_many :references
  has_many :documents

  # def tag_info
  # end
end
