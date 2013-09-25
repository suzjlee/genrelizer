class CreditCreator < ActiveRecord::Migration
  def change
    add_column :artists, :creator_id, :integer
    add_column :songs, :creator_id, :integer
    add_column :genres, :creator_id, :integer
    add_column :genrelizations, :creator_id, :integer
    add_column :sub_genres, :creator_id, :integer
    add_column :descriptions, :creator_id, :integer
    add_column :genre_descriptions, :creator_id, :integer
  end
end
