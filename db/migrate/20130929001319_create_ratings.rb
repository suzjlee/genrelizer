class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.string :subject_type
      t.integer :subject_id
      t.integer :creator_id
      t.boolean :current

      t.timestamps
    end
  end
end
