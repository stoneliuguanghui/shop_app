require 'test_helper'

class OldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @old = olds(:one)
  end

  test "should get index" do
    get olds_url
    assert_response :success
  end

  test "should get new" do
    get new_old_url
    assert_response :success
  end

  test "should create old" do
    assert_difference('Old.count') do
      post olds_url, params: { old: {  } }
    end

    assert_redirected_to old_url(Old.last)
  end

  test "should show old" do
    get old_url(@old)
    assert_response :success
  end

  test "should get edit" do
    get edit_old_url(@old)
    assert_response :success
  end

  test "should update old" do
    patch old_url(@old), params: { old: {  } }
    assert_redirected_to old_url(@old)
  end

  test "should destroy old" do
    assert_difference('Old.count', -1) do
      delete old_url(@old)
    end

    assert_redirected_to olds_url
  end
end
