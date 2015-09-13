class ChangeAttendeeColumns < ActiveRecord::Migration
  def change
  	remove_column :attendees, :attendee, :string
  	add_column :attendees, :attendee_name, :string
  end
end
