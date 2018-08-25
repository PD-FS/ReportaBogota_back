require "application_system_test_case"

class UpzsTest < ApplicationSystemTestCase
  setup do
    @upz = upzs(:one)
  end

  test "visiting the index" do
    visit upzs_url
    assert_selector "h1", text: "Upzs"
  end

  test "creating a Upz" do
    visit upzs_url
    click_on "New Upz"

    fill_in "Georeference", with: @upz.Georeference
    fill_in "Name", with: @upz.Name
    fill_in "District Area", with: @upz.district_area_id
    click_on "Create Upz"

    assert_text "Upz was successfully created"
    click_on "Back"
  end

  test "updating a Upz" do
    visit upzs_url
    click_on "Edit", match: :first

    fill_in "Georeference", with: @upz.Georeference
    fill_in "Name", with: @upz.Name
    fill_in "District Area", with: @upz.district_area_id
    click_on "Update Upz"

    assert_text "Upz was successfully updated"
    click_on "Back"
  end

  test "destroying a Upz" do
    visit upzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Upz was successfully destroyed"
  end
end
