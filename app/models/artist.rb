class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, :through => :songs
  has_many :remixers
  has_many :remixed_songs, :through => :remixers, :source => :song
  belongs_to :country_of_citizenship, :class_name => 'Country'
  scope :randomized, lambda { order("random()") }
end
