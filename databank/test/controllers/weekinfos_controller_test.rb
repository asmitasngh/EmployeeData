require 'test_helper'

class WeekinfosControllerTest < ActionController::TestCase
  setup do
    @weekinfo = weekinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekinfo" do
    assert_difference('Weekinfo.count') do
      post :create, weekinfo: { from_date: @weekinfo.from_date }
    end

    assert_redirected_to weekinfo_path(assigns(:weekinfo))
  end

  test "should show weekinfo" do
    get :show, id: @weekinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekinfo
    assert_response :success
  end

  test "should update weekinfo" do
    patch :update, id: @weekinfo, weekinfo: { from_date: @weekinfo.from_date }
    assert_redirected_to weekinfo_path(assigns(:weekinfo))
  end

  test "should destroy weekinfo" do
    assert_difference('Weekinfo.count', -1) do
      delete :destroy, id: @weekinfo
    end

    assert_redirected_to weekinfos_path
  end
end
