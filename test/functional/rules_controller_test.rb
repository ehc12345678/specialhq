require 'test_helper'

class RulesControllerTest < ActionController::TestCase
  test "should get short_list" do
    get :short_list
    assert_response :success
  end

  test "should get detailed_list" do
    get :detailed_list
    assert_response :success
  end

end
