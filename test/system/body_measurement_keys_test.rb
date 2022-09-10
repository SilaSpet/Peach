require "application_system_test_case"

class BodyMeasurementKeysTest < ApplicationSystemTestCase
  setup do
    @body_measurement_key = body_measurement_keys(:one)
  end

  test "visiting the index" do
    visit body_measurement_keys_url
    assert_selector "h1", text: "Body measurement keys"
  end

  test "should create body measurement key" do
    visit body_measurement_keys_url
    click_on "New body measurement key"

    fill_in "Account", with: @body_measurement_key.account_id
    fill_in "Name", with: @body_measurement_key.name
    click_on "Create Body measurement key"

    assert_text "Body measurement key was successfully created"
    click_on "Back"
  end

  test "should update Body measurement key" do
    visit body_measurement_key_url(@body_measurement_key)
    click_on "Edit this body measurement key", match: :first

    fill_in "Account", with: @body_measurement_key.account_id
    fill_in "Name", with: @body_measurement_key.name
    click_on "Update Body measurement key"

    assert_text "Body measurement key was successfully updated"
    click_on "Back"
  end

  test "should destroy Body measurement key" do
    visit body_measurement_key_url(@body_measurement_key)
    click_on "Destroy this body measurement key", match: :first

    assert_text "Body measurement key was successfully destroyed"
  end
end
