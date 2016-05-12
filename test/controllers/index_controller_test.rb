require 'test_helper'

class IndexControllerTest < ActionController::TestCase
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

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get bidang" do
    get :bidang
    assert_response :success
  end

  test "should get unjuran" do
    get :unjuran
    assert_response :success
  end

  test "should get lecturerload" do
    get :lecturerload
    assert_response :success
  end

  test "should get bidangHistory" do
    get :bidangHistory
    assert_response :success
  end

  test "should get unjuranHistory" do
    get :unjuranHistory
    assert_response :success
  end

  test "should get lecturerHistory" do
    get :lecturerHistory
    assert_response :success
  end

end
