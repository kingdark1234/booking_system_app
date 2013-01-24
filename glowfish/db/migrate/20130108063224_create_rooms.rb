class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :description
      t.integer :capacity
      t.integer :is_active

      t.timestamps
    end
  end
end
