class Event < ActiveRecord::Base
  attr_accessible :name, :event_description, :start_at, :end_at, :status, :eventable_id
  has_event_calendar
  belongs_to :eventable, polymorphic: true

end

