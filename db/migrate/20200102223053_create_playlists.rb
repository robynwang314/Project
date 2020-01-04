class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|

      t.string :email
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
