class Description < ActiveRecord::Base
  has_many :genre_descriptions
  has_many :genres, :through => :genre_descriptions
end
