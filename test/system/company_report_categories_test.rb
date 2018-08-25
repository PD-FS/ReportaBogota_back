require "application_system_test_case"

class CompanyReportCategoriesTest < ApplicationSystemTestCase
  setup do
    @company_report_category = company_report_categories(:one)
  end

  test "visiting the index" do
    visit company_report_categories_url
    assert_selector "h1", text: "Company Report Categories"
  end

  test "creating a Company report category" do
    visit company_report_categories_url
    click_on "New Company Report Category"

    fill_in "Category", with: @company_report_category.category_id
    fill_in "Company", with: @company_report_category.company_id
    click_on "Create Company report category"

    assert_text "Company report category was successfully created"
    click_on "Back"
  end

  test "updating a Company report category" do
    visit company_report_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @company_report_category.category_id
    fill_in "Company", with: @company_report_category.company_id
    click_on "Update Company report category"

    assert_text "Company report category was successfully updated"
    click_on "Back"
  end

  test "destroying a Company report category" do
    visit company_report_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company report category was successfully destroyed"
  end
end
