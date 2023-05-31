class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.string :planet
      t.integer :price
      t.string :description
      t.integer :total_occupancy
      t.integer :total_bedrooms
      t.integer :total_bathrooms
      t.string :home_type
      t.string :section

      t.timestamps
    end
  end
end
