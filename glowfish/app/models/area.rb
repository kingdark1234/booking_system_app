class Area < ActiveRecord::Base
	attr_accessible :area_name, :area_admin_email, :morningstart, :morningstart_min, :eveningend, 
	:eveningend_min, :resolution, :default_duration, :timezone, :is_active, :description

	#validates :area_name
	has_many :rooms
	
end