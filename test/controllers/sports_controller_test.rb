require 'test_helper'

class SportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sports_new_url
    assert_response :success
  end

end
