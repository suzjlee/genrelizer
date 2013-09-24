class GenreDescription < ActiveRecord::Base
  belongs_to :genre
  belongs_to :description
end
