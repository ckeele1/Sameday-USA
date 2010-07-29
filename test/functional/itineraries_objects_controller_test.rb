require 'test_helper'

class ItinerariesObjectsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itineraries_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itineraries_object" do
    assert_difference('ItinerariesObject.count') do
      post :create, :itineraries_object => { }
    end

    assert_redirected_to itineraries_object_path(assigns(:itineraries_object))
  end

  test "should show itineraries_object" do
    get :show, :id => itineraries_objects(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itineraries_objects(:one).to_param
    assert_response :success
  end

  test "should update itineraries_object" do
    put :update, :id => itineraries_objects(:one).to_param, :itineraries_object => { }
    assert_redirected_to itineraries_object_path(assigns(:itineraries_object))
  end

  test "should destroy itineraries_object" do
    assert_difference('ItinerariesObject.count', -1) do
      delete :destroy, :id => itineraries_objects(:one).to_param
    end

    assert_redirected_to itineraries_objects_path
  end
end
