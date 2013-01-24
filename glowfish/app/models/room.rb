class Room < ActiveRecord::Base
  attr_accessible :capacity, :room_description, :is_active, :room_name
  scope :order_by_room_name, -> { order('room_name DESC') }
  belongs_to :areas
  has_many :events, as: :eventable
end
