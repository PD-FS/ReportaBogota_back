require 'test_helper'

class DistrictAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_area = district_areas(:one)
  end

  test "should get index" do
    get district_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_district_area_url
    assert_response :success
  end

  test "should create district_area" do
    assert_difference('DistrictArea.count') do
      post district_areas_url, params: { district_area: { Name: @district_area.Name, ZipCodeBegins: @district_area.ZipCodeBegins, ZipCodeEnds: @district_area.ZipCodeEnds } }
    end

    assert_redirected_to district_area_url(DistrictArea.last)
  end

  test "should show district_area" do
    get district_area_url(@district_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_area_url(@district_area)
    assert_response :success
  end

  test "should update district_area" do
    patch district_area_url(@district_area), params: { district_area: { Name: @district_area.Name, ZipCodeBegins: @district_area.ZipCodeBegins, ZipCodeEnds: @district_area.ZipCodeEnds } }
    assert_redirected_to district_area_url(@district_area)
  end

  test "should destroy district_area" do
    assert_difference('DistrictArea.count', -1) do
      delete district_area_url(@district_area)
    end

    assert_redirected_to district_areas_url
  end
end
