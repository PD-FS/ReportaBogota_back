require 'test_helper'

class ReportCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_category = report_categories(:one)
  end

  test "should get index" do
    get report_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_report_category_url
    assert_response :success
  end

  test "should create report_category" do
    assert_difference('ReportCategory.count') do
      post report_categories_url, params: { report_category: { Name: @report_category.Name } }
    end

    assert_redirected_to report_category_url(ReportCategory.last)
  end

  test "should show report_category" do
    get report_category_url(@report_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_category_url(@report_category)
    assert_response :success
  end

  test "should update report_category" do
    patch report_category_url(@report_category), params: { report_category: { Name: @report_category.Name } }
    assert_redirected_to report_category_url(@report_category)
  end

  test "should destroy report_category" do
    assert_difference('ReportCategory.count', -1) do
      delete report_category_url(@report_category)
    end

    assert_redirected_to report_categories_url
  end
end
