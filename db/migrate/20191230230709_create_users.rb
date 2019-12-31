class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      #connection.execute("DROP TABLE IF EXISTS table_name_here")
      t.string :email
      t.text :spotify_hash
      t.string :token

      t.timestamps
    end
  end
end
