require 'test_helper'

class AboutappControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get credits" do
    get :credits
    assert_response :success
  end

  test "should get features" do
    get :features
    assert_response :success
  end

end
