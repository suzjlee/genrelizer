class Country < ActiveRecord::Base
  has_many :artists, :foreign_key => :country_of_citizenship_id
end
