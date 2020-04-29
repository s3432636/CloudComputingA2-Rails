require 'test_helper'

class GroupTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get group_types_new_url
    assert_response :success
  end

end
