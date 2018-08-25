require 'test_helper'

class CompanyReportCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_report_category = company_report_categories(:one)
  end

  test "should get index" do
    get company_report_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_company_report_category_url
    assert_response :success
  end

  test "should create company_report_category" do
    assert_difference('CompanyReportCategory.count') do
      post company_report_categories_url, params: { company_report_category: { category_id: @company_report_category.category_id, company_id: @company_report_category.company_id } }
    end

    assert_redirected_to company_report_category_url(CompanyReportCategory.last)
  end

  test "should show company_report_category" do
    get company_report_category_url(@company_report_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_report_category_url(@company_report_category)
    assert_response :success
  end

  test "should update company_report_category" do
    patch company_report_category_url(@company_report_category), params: { company_report_category: { category_id: @company_report_category.category_id, company_id: @company_report_category.company_id } }
    assert_redirected_to company_report_category_url(@company_report_category)
  end

  test "should destroy company_report_category" do
    assert_difference('CompanyReportCategory.count', -1) do
      delete company_report_category_url(@company_report_category)
    end

    assert_redirected_to company_report_categories_url
  end
end
