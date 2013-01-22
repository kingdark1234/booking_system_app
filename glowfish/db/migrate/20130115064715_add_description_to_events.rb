class AddDescriptionToEvents < ActiveRecord::Migration
  def change
    add_column :events, :description, :text
    add_column :events, :userable_id, :integer
    add_column :events, :status, :string
  end
end
