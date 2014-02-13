class Remixer < ActiveRecord::Base
  belongs_to :song
  belongs_to :artist
end
