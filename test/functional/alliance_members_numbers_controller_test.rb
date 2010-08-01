require 'test_helper'

class AllianceMembersNumbersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alliance_members_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alliance_members_number" do
    assert_difference('AllianceMembersNumber.count') do
      post :create, :alliance_members_number => { }
    end

    assert_redirected_to alliance_members_number_path(assigns(:alliance_members_number))
  end

  test "should show alliance_members_number" do
    get :show, :id => alliance_members_numbers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alliance_members_numbers(:one).to_param
    assert_response :success
  end

  test "should update alliance_members_number" do
    put :update, :id => alliance_members_numbers(:one).to_param, :alliance_members_number => { }
    assert_redirected_to alliance_members_number_path(assigns(:alliance_members_number))
  end

  test "should destroy alliance_members_number" do
    assert_difference('AllianceMembersNumber.count', -1) do
      delete :destroy, :id => alliance_members_numbers(:one).to_param
    end

    assert_redirected_to alliance_members_numbers_path
  end
end
