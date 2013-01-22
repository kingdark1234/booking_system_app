class AddArea_IdToRooms < ActiveRecord::Migration
   def change
    add_column :rooms, :area_id, :integer
  end
end
