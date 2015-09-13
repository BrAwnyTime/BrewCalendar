class Event < ActiveRecord::Base
	has_many :attendees, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
end
