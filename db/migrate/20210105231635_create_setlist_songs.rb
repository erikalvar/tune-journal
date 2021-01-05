class CreateSetlistSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :setlist_songs do |t|
      t.integer :setlist_id
      t.integer :song_id

      t.timestamps
    end
  end
end
