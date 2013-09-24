class Genre < ActiveRecord::Base
  has_many :genrelizations
  has_many :songs, :through => :genrelizations
  has_many :genre_descriptions
  has_many :descriptions, :through => :genre_descriptions
  has_many :sub_genres, :foreign_key => :parent_genre_id
  has_many :super_genres, :class_name => 'SubGenre', :foreign_key => :child_genre_id
  has_many :child_genres, :through => :sub_genres
  has_many :parent_genres, :through => :super_genres
end
