class Genre < ActiveRecord::Base
  has_many :genrelizations
  has_many :songs, :through => :genrelizations
  has_many :genre_descriptions
  has_many :descriptions, :through => :genre_descriptions
end
