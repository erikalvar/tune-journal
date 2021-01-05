class CreateSetlists < ActiveRecord::Migration[6.0]
  def change
    create_table :setlists do |t|
      t.string :name
      t.integer :user_id
      t.date :event_date
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
