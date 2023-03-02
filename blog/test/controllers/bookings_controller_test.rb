require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { employee_end_time: @booking.employee_end_time, employee_start_time: @booking.employee_start_time, end_time: @booking.end_time, event_name: @booking.event_name, event_phases: @booking.event_phases, event_type: @booking.event_type, host: @booking.host, menu_items: @booking.menu_items, occupants: @booking.occupants, room_layout: @booking.room_layout, seating: @booking.seating, start_time: @booking.start_time, wait_staff: @booking.wait_staff } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { employee_end_time: @booking.employee_end_time, employee_start_time: @booking.employee_start_time, end_time: @booking.end_time, event_name: @booking.event_name, event_phases: @booking.event_phases, event_type: @booking.event_type, host: @booking.host, menu_items: @booking.menu_items, occupants: @booking.occupants, room_layout: @booking.room_layout, seating: @booking.seating, start_time: @booking.start_time, wait_staff: @booking.wait_staff } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
