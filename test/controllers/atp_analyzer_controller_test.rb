require 'test_helper'

class AtpAnalyzerControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get analyze" do
    get :analyze
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

end
