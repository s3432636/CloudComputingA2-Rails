require 'test_helper'

class SkillLevelsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get skill_levels_new_url
    assert_response :success
  end

end
