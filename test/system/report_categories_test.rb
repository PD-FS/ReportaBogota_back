require "application_system_test_case"

class ReportCategoriesTest < ApplicationSystemTestCase
  setup do
    @report_category = report_categories(:one)
  end

  test "visiting the index" do
    visit report_categories_url
    assert_selector "h1", text: "Report Categories"
  end

  test "creating a Report category" do
    visit report_categories_url
    click_on "New Report Category"

    fill_in "Name", with: @report_category.Name
    click_on "Create Report category"

    assert_text "Report category was successfully created"
    click_on "Back"
  end

  test "updating a Report category" do
    visit report_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @report_category.Name
    click_on "Update Report category"

    assert_text "Report category was successfully updated"
    click_on "Back"
  end

  test "destroying a Report category" do
    visit report_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report category was successfully destroyed"
  end
end
