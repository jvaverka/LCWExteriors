require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "should create appointment" do
    visit appointments_url
    click_on "New appointment"

    fill_in "City", with: @appointment.city
    fill_in "Email", with: @appointment.email
    fill_in "First name", with: @appointment.first_name
    fill_in "Last name", with: @appointment.last_name
    fill_in "Street address", with: @appointment.street_address
    fill_in "Zip code", with: @appointment.zip_code
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "should update Appointment" do
    visit appointment_url(@appointment)
    click_on "Edit this appointment", match: :first

    fill_in "City", with: @appointment.city
    fill_in "Email", with: @appointment.email
    fill_in "First name", with: @appointment.first_name
    fill_in "Last name", with: @appointment.last_name
    fill_in "Street address", with: @appointment.street_address
    fill_in "Zip code", with: @appointment.zip_code
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "should destroy Appointment" do
    visit appointment_url(@appointment)
    click_on "Destroy this appointment", match: :first

    assert_text "Appointment was successfully destroyed"
  end
end
