require 'test_helper'

class ApprovalTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get approval_types_new_url
    assert_response :success
  end

end
