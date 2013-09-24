class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.belongs_to :artist

      t.timestamps
    end
  end
end
