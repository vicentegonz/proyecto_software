require 'test_helper'

class ComunasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get comunas_new_url
    assert_response :success
  end

  test "should get create" do
    get comunas_create_url
    assert_response :success
  end

  test "should get index" do
    get comunas_index_url
    assert_response :success
  end

  test "should get show" do
    get comunas_show_url
    assert_response :success
  end

  test "should get edit" do
    get comunas_edit_url
    assert_response :success
  end

  test "should get update" do
    get comunas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get comunas_destroy_url
    assert_response :success
  end

end
