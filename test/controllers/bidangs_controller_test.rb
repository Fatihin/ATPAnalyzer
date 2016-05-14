require 'test_helper'

class BidangsControllerTest < ActionController::TestCase
  setup do
    @bidang = bidangs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bidangs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bidang" do
    assert_difference('Bidang.count') do
      post :create, bidang: { bidang_desc: @bidang.bidang_desc, bidang_id: @bidang.bidang_id, bidang_name: @bidang.bidang_name, fac_id: @bidang.fac_id, result_bidang: @bidang.result_bidang }
    end

    assert_redirected_to bidang_path(assigns(:bidang))
  end

  test "should show bidang" do
    get :show, id: @bidang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bidang
    assert_response :success
  end

  test "should update bidang" do
    patch :update, id: @bidang, bidang: { bidang_desc: @bidang.bidang_desc, bidang_id: @bidang.bidang_id, bidang_name: @bidang.bidang_name, fac_id: @bidang.fac_id, result_bidang: @bidang.result_bidang }
    assert_redirected_to bidang_path(assigns(:bidang))
  end

  test "should destroy bidang" do
    assert_difference('Bidang.count', -1) do
      delete :destroy, id: @bidang
    end

    assert_redirected_to bidangs_path
  end
end
