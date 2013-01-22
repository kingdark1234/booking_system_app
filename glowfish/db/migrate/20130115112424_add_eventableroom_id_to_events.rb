class AddEventableroomIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :eventableroom_id, :integer
  end
end
