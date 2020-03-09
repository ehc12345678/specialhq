require 'test_helper'

class ParentControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get needs" do
    get :needs
    assert_response :success
  end

  test "should get howuse" do
    get :howuse
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

  test "set params" do
    parent_controller = ParentController.new()
    dependent = Dependent.new()
    params = { :name => "cool", :age => 8, :need => "Autism" }
    expected_values = { :name => "", :age => 0, :need => ""}
    parent_controller.add_params(dependent.attributes, params, expect_values)
    assert_same "cool", dependent.name
    assert_same 8, dependent.age
    assert_same "need", "Autism"
  end
end
