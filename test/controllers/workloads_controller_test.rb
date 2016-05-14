require 'test_helper'

class WorkloadsControllerTest < ActionController::TestCase
  setup do
    @workload = workloads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workloads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workload" do
    assert_difference('Workload.count') do
      post :create, workload: { ATP: @workload.ATP, KTS: @workload.KTS, k1: @workload.k1, k2: @workload.k2, k3: @workload.k3, ks_deg: @workload.ks_deg, ks_dip: @workload.ks_dip, ks_postgrade: @workload.ks_postgrade, lec_id: @workload.lec_id, load_id: @workload.load_id, ps_deg: @workload.ps_deg, ps_dip: @workload.ps_dip, ps_postgrade: @workload.ps_postgrade, total_deg: @workload.total_deg, total_dip: @workload.total_dip, total_postgrade: @workload.total_postgrade }
    end

    assert_redirected_to workload_path(assigns(:workload))
  end

  test "should show workload" do
    get :show, id: @workload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workload
    assert_response :success
  end

  test "should update workload" do
    patch :update, id: @workload, workload: { ATP: @workload.ATP, KTS: @workload.KTS, k1: @workload.k1, k2: @workload.k2, k3: @workload.k3, ks_deg: @workload.ks_deg, ks_dip: @workload.ks_dip, ks_postgrade: @workload.ks_postgrade, lec_id: @workload.lec_id, load_id: @workload.load_id, ps_deg: @workload.ps_deg, ps_dip: @workload.ps_dip, ps_postgrade: @workload.ps_postgrade, total_deg: @workload.total_deg, total_dip: @workload.total_dip, total_postgrade: @workload.total_postgrade }
    assert_redirected_to workload_path(assigns(:workload))
  end

  test "should destroy workload" do
    assert_difference('Workload.count', -1) do
      delete :destroy, id: @workload
    end

    assert_redirected_to workloads_path
  end
end
