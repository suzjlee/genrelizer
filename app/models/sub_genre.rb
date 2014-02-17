class SubGenre < ActiveRecord::Base
  belongs_to :parent_genre, :class_name => 'Genre'
  belongs_to :child_genre, :class_name => 'Genre'
  validates_uniqueness_of :child_genre_id, :scope => :parent_genre_id
end
