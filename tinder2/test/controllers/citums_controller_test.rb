require 'test_helper'

class CitumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get citums_index_url
    assert_response :success
  end

  test "should get show" do
    get citums_show_url
    assert_response :success
  end

  test "should get new" do
    get citums_new_url
    assert_response :success
  end

  test "should get edit" do
    get citums_edit_url
    assert_response :success
  end

end
