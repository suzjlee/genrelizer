class Genrelization < ActiveRecord::Base
  belongs_to :song
  belongs_to :genre
  has_one :artist, :through => :song
end