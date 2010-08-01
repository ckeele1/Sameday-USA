require 'test_helper'

class AllianceMembersWebsitesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alliance_members_websites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alliance_members_website" do
    assert_difference('AllianceMembersWebsite.count') do
      post :create, :alliance_members_website => { }
    end

    assert_redirected_to alliance_members_website_path(assigns(:alliance_members_website))
  end

  test "should show alliance_members_website" do
    get :show, :id => alliance_members_websites(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alliance_members_websites(:one).to_param
    assert_response :success
  end

  test "should update alliance_members_website" do
    put :update, :id => alliance_members_websites(:one).to_param, :alliance_members_website => { }
    assert_redirected_to alliance_members_website_path(assigns(:alliance_members_website))
  end

  test "should destroy alliance_members_website" do
    assert_difference('AllianceMembersWebsite.count', -1) do
      delete :destroy, :id => alliance_members_websites(:one).to_param
    end

    assert_redirected_to alliance_members_websites_path
  end
end
