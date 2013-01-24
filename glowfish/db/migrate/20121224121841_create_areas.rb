class CreateAreas < ActiveRecord::Migration
  def change
  	create_table :areas do |t|
  	 	t.string :area_name 
  	 	t.string :area_admin_email
  	 	t.integer :morningstart
  	 	t.integer :morningstart_min
  	 	t.integer :eveningend
  	 	t.integer :eveningend_min
  	 	t.integer :resolution
  	 	t.integer :default_duration
  	 	t.string :timezone
  	 	t.integer :is_active
  	
  		t.timestamps
  	end
  end
end
