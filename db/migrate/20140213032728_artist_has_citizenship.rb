class ArtistHasCitizenship < ActiveRecord::Migration
  def change
    add_column :artists, :country_of_citizenship_id, :integer
  end
end
