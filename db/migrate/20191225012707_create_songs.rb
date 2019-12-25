class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist_name
      t.integer :playlist_id

      t.timestamps
    end
  end
end
