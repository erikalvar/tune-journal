class CreateReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :references do |t|
      t.string :name
      t.integer :song_id
      t.string :url

      t.timestamps
    end
  end
end
