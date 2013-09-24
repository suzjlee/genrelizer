class CreateGenrelizations < ActiveRecord::Migration
  def change
    create_table :genrelizations do |t|
      t.belongs_to :song
      t.belongs_to :genre
      
      t.timestamps
    end
  end
end
