class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :event_name
      t.text :wait_staff
      t.text :host
      t.string :event_type
      t.string :start_time
      t.string :end_time
      t.string :occupants
      t.text :menu_items
      t.string :room_layout
      t.string :seating
      t.string :employee_start_time
      t.string :employee_end_time
      t.text :event_phases

      t.timestamps
    end
  end
end
