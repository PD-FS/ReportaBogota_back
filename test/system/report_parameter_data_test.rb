require "application_system_test_case"

class ReportParameterDataTest < ApplicationSystemTestCase
  setup do
    @report_parameter_datum = report_parameter_data(:one)
  end

  test "visiting the index" do
    visit report_parameter_data_url
    assert_selector "h1", text: "Report Parameter Data"
  end

  test "creating a Report parameter datum" do
    visit report_parameter_data_url
    click_on "New Report Parameter Datum"

    fill_in "Latitude", with: @report_parameter_datum.Latitude
    fill_in "Longitude", with: @report_parameter_datum.Longitude
    fill_in "Value", with: @report_parameter_datum.Value
    fill_in "Report", with: @report_parameter_datum.report_id
    fill_in "Report Parameter", with: @report_parameter_datum.report_parameter_id
    click_on "Create Report parameter datum"

    assert_text "Report parameter datum was successfully created"
    click_on "Back"
  end

  test "updating a Report parameter datum" do
    visit report_parameter_data_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @report_parameter_datum.Latitude
    fill_in "Longitude", with: @report_parameter_datum.Longitude
    fill_in "Value", with: @report_parameter_datum.Value
    fill_in "Report", with: @report_parameter_datum.report_id
    fill_in "Report Parameter", with: @report_parameter_datum.report_parameter_id
    click_on "Update Report parameter datum"

    assert_text "Report parameter datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Report parameter datum" do
    visit report_parameter_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report parameter datum was successfully destroyed"
  end
end
