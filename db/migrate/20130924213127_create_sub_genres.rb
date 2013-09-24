class CreateSubGenres < ActiveRecord::Migration
  def change
    create_table :sub_genres do |t|
      t.belongs_to :parent_genre, index: true
      t.belongs_to :child_genre, index: true

      t.timestamps
    end
  end
end
