class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :attendee
      t.integer :response
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
