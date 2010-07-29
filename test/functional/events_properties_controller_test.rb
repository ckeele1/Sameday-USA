require 'test_helper'

class EventsPropertiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_property" do
    assert_difference('EventsProperty.count') do
      post :create, :events_property => { }
    end

    assert_redirected_to events_property_path(assigns(:events_property))
  end

  test "should show events_property" do
    get :show, :id => events_properties(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events_properties(:one).to_param
    assert_response :success
  end

  test "should update events_property" do
    put :update, :id => events_properties(:one).to_param, :events_property => { }
    assert_redirected_to events_property_path(assigns(:events_property))
  end

  test "should destroy events_property" do
    assert_difference('EventsProperty.count', -1) do
      delete :destroy, :id => events_properties(:one).to_param
    end

    assert_redirected_to events_properties_path
  end
end
