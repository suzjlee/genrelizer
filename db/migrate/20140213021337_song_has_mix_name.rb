class SongHasMixName < ActiveRecord::Migration
  def change
    add_column :songs, :mix_name, :string
  end
end
