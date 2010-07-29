require 'test_helper'

class PlacesPropertiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_property" do
    assert_difference('PlacesProperty.count') do
      post :create, :places_property => { }
    end

    assert_redirected_to places_property_path(assigns(:places_property))
  end

  test "should show places_property" do
    get :show, :id => places_properties(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => places_properties(:one).to_param
    assert_response :success
  end

  test "should update places_property" do
    put :update, :id => places_properties(:one).to_param, :places_property => { }
    assert_redirected_to places_property_path(assigns(:places_property))
  end

  test "should destroy places_property" do
    assert_difference('PlacesProperty.count', -1) do
      delete :destroy, :id => places_properties(:one).to_param
    end

    assert_redirected_to places_properties_path
  end
end
