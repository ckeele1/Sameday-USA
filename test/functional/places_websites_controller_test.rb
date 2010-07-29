require 'test_helper'

class PlacesWebsitesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_websites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_website" do
    assert_difference('PlacesWebsite.count') do
      post :create, :places_website => { }
    end

    assert_redirected_to places_website_path(assigns(:places_website))
  end

  test "should show places_website" do
    get :show, :id => places_websites(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => places_websites(:one).to_param
    assert_response :success
  end

  test "should update places_website" do
    put :update, :id => places_websites(:one).to_param, :places_website => { }
    assert_redirected_to places_website_path(assigns(:places_website))
  end

  test "should destroy places_website" do
    assert_difference('PlacesWebsite.count', -1) do
      delete :destroy, :id => places_websites(:one).to_param
    end

    assert_redirected_to places_websites_path
  end
end
