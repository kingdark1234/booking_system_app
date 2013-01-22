class RemoveDefaultDurationFromArea < ActiveRecord::Migration
  def change
    remove_column :areas, :default_duration
  end
end
