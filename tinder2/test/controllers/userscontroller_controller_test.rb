require 'test_helper'

class UserscontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get userscontroller_create_url
    assert_response :success
  end

end
