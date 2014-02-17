class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :genrelizations, :dependent => :destroy
  has_many :genres, :through => :genrelizations
  has_many :remixers
  has_many :remixing_artists, :through => :remixers, :source => :artist
end
