require "application_system_test_case"

class ReportParametersTest < ApplicationSystemTestCase
  setup do
    @report_parameter = report_parameters(:one)
  end

  test "visiting the index" do
    visit report_parameters_url
    assert_selector "h1", text: "Report Parameters"
  end

  test "creating a Report parameter" do
    visit report_parameters_url
    click_on "New Report Parameter"

    fill_in "Datatype", with: @report_parameter.DataType
    fill_in "Htmlvisualization", with: @report_parameter.HtmlVisualization
    fill_in "Name", with: @report_parameter.Name
    fill_in "Optional", with: @report_parameter.Optional
    fill_in "Report Type", with: @report_parameter.report_type_id
    click_on "Create Report parameter"

    assert_text "Report parameter was successfully created"
    click_on "Back"
  end

  test "updating a Report parameter" do
    visit report_parameters_url
    click_on "Edit", match: :first

    fill_in "Datatype", with: @report_parameter.DataType
    fill_in "Htmlvisualization", with: @report_parameter.HtmlVisualization
    fill_in "Name", with: @report_parameter.Name
    fill_in "Optional", with: @report_parameter.Optional
    fill_in "Report Type", with: @report_parameter.report_type_id
    click_on "Update Report parameter"

    assert_text "Report parameter was successfully updated"
    click_on "Back"
  end

  test "destroying a Report parameter" do
    visit report_parameters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report parameter was successfully destroyed"
  end
end
