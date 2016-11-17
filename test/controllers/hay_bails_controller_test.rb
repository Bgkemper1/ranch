require 'test_helper'

class HayBailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hay_bail = hay_bails(:one)
  end

  test "should get index" do
    get hay_bails_url
    assert_response :success
  end

  test "should get new" do
    get new_hay_bail_url
    assert_response :success
  end

  test "should create hay_bail" do
    assert_difference('HayBail.count') do
      post hay_bails_url, params: { hay_bail: { bail_count: @hay_bail.bail_count, field_name: @hay_bail.field_name } }
    end

    assert_redirected_to hay_bail_url(HayBail.last)
  end

  test "should show hay_bail" do
    get hay_bail_url(@hay_bail)
    assert_response :success
  end

  test "should get edit" do
    get edit_hay_bail_url(@hay_bail)
    assert_response :success
  end

  test "should update hay_bail" do
    patch hay_bail_url(@hay_bail), params: { hay_bail: { bail_count: @hay_bail.bail_count, field_name: @hay_bail.field_name } }
    assert_redirected_to hay_bail_url(@hay_bail)
  end

  test "should destroy hay_bail" do
    assert_difference('HayBail.count', -1) do
      delete hay_bail_url(@hay_bail)
    end

    assert_redirected_to hay_bails_url
  end
end
