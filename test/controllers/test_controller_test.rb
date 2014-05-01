require 'test_helper'

class TestControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get people" do
    get :people
    assert_response :success
  end

  test "should get keywords" do
    get :keywords
    assert_response :success
  end

end
