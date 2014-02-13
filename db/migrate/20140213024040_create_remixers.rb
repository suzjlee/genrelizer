class CreateRemixers < ActiveRecord::Migration
  def change
    create_table :remixers do |t|
      t.integer :song_id
      t.integer :artist_id
      t.integer :creator_id

      t.timestamps
    end
  end
end
