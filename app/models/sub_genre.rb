class SubGenre < ActiveRecord::Base
  belongs_to :parent_genre, :class_name => 'Genre'
  belongs_to :child_genre, :class_name => 'Genre'
end
