class AddEventableTypeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :eventable_type, :string
  end
end
