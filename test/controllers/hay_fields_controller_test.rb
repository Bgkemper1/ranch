require 'test_helper'

class HayFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hay_field = hay_fields(:one)
  end

  test "should get index" do
    get hay_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_hay_field_url
    assert_response :success
  end

  test "should create hay_field" do
    assert_difference('HayField.count') do
      post hay_fields_url, params: { hay_field: { bail_count: @hay_field.bail_count, field_name: @hay_field.field_name } }
    end

    assert_redirected_to hay_field_url(HayField.last)
  end

  test "should show hay_field" do
    get hay_field_url(@hay_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_hay_field_url(@hay_field)
    assert_response :success
  end

  test "should update hay_field" do
    patch hay_field_url(@hay_field), params: { hay_field: { bail_count: @hay_field.bail_count, field_name: @hay_field.field_name } }
    assert_redirected_to hay_field_url(@hay_field)
  end

  test "should destroy hay_field" do
    assert_difference('HayField.count', -1) do
      delete hay_field_url(@hay_field)
    end

    assert_redirected_to hay_fields_url
  end
end
