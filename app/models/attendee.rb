class Attendee < ActiveRecord::Base
  belongs_to :event
	validates :attendee_name, presence: true
end
