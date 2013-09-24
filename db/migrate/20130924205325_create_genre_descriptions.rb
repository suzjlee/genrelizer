class CreateGenreDescriptions < ActiveRecord::Migration
  def change
    create_table :genre_descriptions do |t|
      t.belongs_to :genre, index: true
      t.belongs_to :description, index: true

      t.timestamps
    end
  end
end
