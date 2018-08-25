require 'test_helper'

class ReportParametersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_parameter = report_parameters(:one)
  end

  test "should get index" do
    get report_parameters_url
    assert_response :success
  end

  test "should get new" do
    get new_report_parameter_url
    assert_response :success
  end

  test "should create report_parameter" do
    assert_difference('ReportParameter.count') do
      post report_parameters_url, params: { report_parameter: { DataType: @report_parameter.DataType, HtmlVisualization: @report_parameter.HtmlVisualization, Name: @report_parameter.Name, Optional: @report_parameter.Optional, report_type_id: @report_parameter.report_type_id } }
    end

    assert_redirected_to report_parameter_url(ReportParameter.last)
  end

  test "should show report_parameter" do
    get report_parameter_url(@report_parameter)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_parameter_url(@report_parameter)
    assert_response :success
  end

  test "should update report_parameter" do
    patch report_parameter_url(@report_parameter), params: { report_parameter: { DataType: @report_parameter.DataType, HtmlVisualization: @report_parameter.HtmlVisualization, Name: @report_parameter.Name, Optional: @report_parameter.Optional, report_type_id: @report_parameter.report_type_id } }
    assert_redirected_to report_parameter_url(@report_parameter)
  end

  test "should destroy report_parameter" do
    assert_difference('ReportParameter.count', -1) do
      delete report_parameter_url(@report_parameter)
    end

    assert_redirected_to report_parameters_url
  end
end
