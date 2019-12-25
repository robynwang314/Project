class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :email
      t.string :r_artist
      t.string :r_track
      t.string :r_genre
      
      t.timestamps
    end
  end
end
