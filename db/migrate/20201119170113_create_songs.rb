class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :song do |t|
      t.string :name
      t.integer :artist_id
    end
  end
end
