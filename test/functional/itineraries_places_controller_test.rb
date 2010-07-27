require 'test_helper'

class ItinerariesPlacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itineraries_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itineraries_place" do
    assert_difference('ItinerariesPlace.count') do
      post :create, :itineraries_place => { }
    end

    assert_redirected_to itineraries_place_path(assigns(:itineraries_place))
  end

  test "should show itineraries_place" do
    get :show, :id => itineraries_places(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itineraries_places(:one).to_param
    assert_response :success
  end

  test "should update itineraries_place" do
    put :update, :id => itineraries_places(:one).to_param, :itineraries_place => { }
    assert_redirected_to itineraries_place_path(assigns(:itineraries_place))
  end

  test "should destroy itineraries_place" do
    assert_difference('ItinerariesPlace.count', -1) do
      delete :destroy, :id => itineraries_places(:one).to_param
    end

    assert_redirected_to itineraries_places_path
  end
end
