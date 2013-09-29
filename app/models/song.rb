class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :genrelizations, :dependent => :destroy
  has_many :genres, :through => :genrelizations
end
