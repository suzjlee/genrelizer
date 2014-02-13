class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, :through => :songs
  has_many :remixers
  has_many :remixed_songs, :through => :remixers, :source => :song
end
