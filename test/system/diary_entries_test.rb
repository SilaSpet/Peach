require "application_system_test_case"

class DiaryEntriesTest < ApplicationSystemTestCase
  setup do
    @diary_entry = diary_entries(:one)
  end

  test "visiting the index" do
    visit diary_entries_url
    assert_selector "h1", text: "Diary Entries"
  end

  test "should create Diary Entry" do
    visit diary_entries_url
    click_on "New Diary Entry"

    fill_in "Account", with: @diary_entry.account_id
    fill_in "Description", with: @diary_entry.description
    fill_in "Measurements", with: @diary_entry.measurements
    fill_in "Taken at", with: @diary_entry.taken_at
    click_on "Create Diary Entry"

    assert_text "Diary Entry was successfully created"
    click_on "Back"
  end

  test "should update Diary Entry" do
    visit diary_entry_url(@diary_entry)
    click_on "Edit this Diary Entry", match: :first

    fill_in "Account", with: @diary_entry.account_id
    fill_in "Description", with: @diary_entry.description
    fill_in "Measurements", with: @diary_entry.measurements
    fill_in "Taken at", with: @diary_entry.taken_at
    click_on "Update Diary Entry"

    assert_text "Diary Entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Diary Entry" do
    visit diary_entry_url(@diary_entry)
    click_on "Destroy this Diary Entry", match: :first

    assert_text "Diary Entry was successfully destroyed"
  end
end
