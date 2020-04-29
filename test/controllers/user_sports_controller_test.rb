require 'test_helper'

class UserSportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_sports_new_url
    assert_response :success
  end

end
