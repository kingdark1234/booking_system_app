class RemoveEventableroomIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :eventableroom_id
  end
end
