json.extract! booking, :id, :event_name, :wait_staff, :host, :event_type, :start_time, :end_time, :occupants, :menu_items, :room_layout, :seating, :employee_start_time, :employee_end_time, :event_phases, :created_at, :updated_at
json.url booking_url(booking, format: :json)
