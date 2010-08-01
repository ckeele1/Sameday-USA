require 'test_helper'

class AllianceMembersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alliance_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alliance_member" do
    assert_difference('AllianceMember.count') do
      post :create, :alliance_member => { }
    end

    assert_redirected_to alliance_member_path(assigns(:alliance_member))
  end

  test "should show alliance_member" do
    get :show, :id => alliance_members(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alliance_members(:one).to_param
    assert_response :success
  end

  test "should update alliance_member" do
    put :update, :id => alliance_members(:one).to_param, :alliance_member => { }
    assert_redirected_to alliance_member_path(assigns(:alliance_member))
  end

  test "should destroy alliance_member" do
    assert_difference('AllianceMember.count', -1) do
      delete :destroy, :id => alliance_members(:one).to_param
    end

    assert_redirected_to alliance_members_path
  end
end
