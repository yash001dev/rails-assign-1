require "application_system_test_case"

class PhysiciansTest < ApplicationSystemTestCase
  setup do
    @physician = physicians(:one)
  end

  test "visiting the index" do
    visit physicians_url
    assert_selector "h1", text: "Physicians"
  end

  test "creating a Physician" do
    visit physicians_url
    click_on "New Physician"

    click_on "Create Physician"

    assert_text "Physician was successfully created"
    click_on "Back"
  end

  test "updating a Physician" do
    visit physicians_url
    click_on "Edit", match: :first

    click_on "Update Physician"

    assert_text "Physician was successfully updated"
    click_on "Back"
  end

  test "destroying a Physician" do
    visit physicians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Physician was successfully destroyed"
  end
end
