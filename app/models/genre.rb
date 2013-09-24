class Genre < ActiveRecord::Base
  has_many :genrelizations
  has_many :songs, :through => :genrelizations
end
