require 'test_helper'

class ReportParameterDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_parameter_datum = report_parameter_data(:one)
  end

  test "should get index" do
    get report_parameter_data_url
    assert_response :success
  end

  test "should get new" do
    get new_report_parameter_datum_url
    assert_response :success
  end

  test "should create report_parameter_datum" do
    assert_difference('ReportParameterDatum.count') do
      post report_parameter_data_url, params: { report_parameter_datum: { Latitude: @report_parameter_datum.Latitude, Longitude: @report_parameter_datum.Longitude, Value: @report_parameter_datum.Value, report_id: @report_parameter_datum.report_id, report_parameter_id: @report_parameter_datum.report_parameter_id } }
    end

    assert_redirected_to report_parameter_datum_url(ReportParameterDatum.last)
  end

  test "should show report_parameter_datum" do
    get report_parameter_datum_url(@report_parameter_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_parameter_datum_url(@report_parameter_datum)
    assert_response :success
  end

  test "should update report_parameter_datum" do
    patch report_parameter_datum_url(@report_parameter_datum), params: { report_parameter_datum: { Latitude: @report_parameter_datum.Latitude, Longitude: @report_parameter_datum.Longitude, Value: @report_parameter_datum.Value, report_id: @report_parameter_datum.report_id, report_parameter_id: @report_parameter_datum.report_parameter_id } }
    assert_redirected_to report_parameter_datum_url(@report_parameter_datum)
  end

  test "should destroy report_parameter_datum" do
    assert_difference('ReportParameterDatum.count', -1) do
      delete report_parameter_datum_url(@report_parameter_datum)
    end

    assert_redirected_to report_parameter_data_url
  end
end
