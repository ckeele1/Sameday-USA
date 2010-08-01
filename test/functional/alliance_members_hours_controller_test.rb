require 'test_helper'

class AllianceMembersHoursControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alliance_members_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alliance_members_hour" do
    assert_difference('AllianceMembersHour.count') do
      post :create, :alliance_members_hour => { }
    end

    assert_redirected_to alliance_members_hour_path(assigns(:alliance_members_hour))
  end

  test "should show alliance_members_hour" do
    get :show, :id => alliance_members_hours(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alliance_members_hours(:one).to_param
    assert_response :success
  end

  test "should update alliance_members_hour" do
    put :update, :id => alliance_members_hours(:one).to_param, :alliance_members_hour => { }
    assert_redirected_to alliance_members_hour_path(assigns(:alliance_members_hour))
  end

  test "should destroy alliance_members_hour" do
    assert_difference('AllianceMembersHour.count', -1) do
      delete :destroy, :id => alliance_members_hours(:one).to_param
    end

    assert_redirected_to alliance_members_hours_path
  end
end
