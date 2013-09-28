class Description < ActiveRecord::Base
  has_many :genre_descriptions
  has_many :genres, :through => :genre_descriptions
  belongs_to :creator, :class_name => 'Audiophile'
end
