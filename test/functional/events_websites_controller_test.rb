require 'test_helper'

class EventsWebsitesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_websites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_website" do
    assert_difference('EventsWebsite.count') do
      post :create, :events_website => { }
    end

    assert_redirected_to events_website_path(assigns(:events_website))
  end

  test "should show events_website" do
    get :show, :id => events_websites(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events_websites(:one).to_param
    assert_response :success
  end

  test "should update events_website" do
    put :update, :id => events_websites(:one).to_param, :events_website => { }
    assert_redirected_to events_website_path(assigns(:events_website))
  end

  test "should destroy events_website" do
    assert_difference('EventsWebsite.count', -1) do
      delete :destroy, :id => events_websites(:one).to_param
    end

    assert_redirected_to events_websites_path
  end
end
