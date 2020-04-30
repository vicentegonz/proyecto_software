require 'test_helper'

class PrincipalControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get principal_welcome_url
    assert_response :success
  end

end
