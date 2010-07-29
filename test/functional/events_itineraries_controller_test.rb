require 'test_helper'

class EventsItinerariesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_itineraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_itinerary" do
    assert_difference('EventsItinerary.count') do
      post :create, :events_itinerary => { }
    end

    assert_redirected_to events_itinerary_path(assigns(:events_itinerary))
  end

  test "should show events_itinerary" do
    get :show, :id => events_itineraries(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events_itineraries(:one).to_param
    assert_response :success
  end

  test "should update events_itinerary" do
    put :update, :id => events_itineraries(:one).to_param, :events_itinerary => { }
    assert_redirected_to events_itinerary_path(assigns(:events_itinerary))
  end

  test "should destroy events_itinerary" do
    assert_difference('EventsItinerary.count', -1) do
      delete :destroy, :id => events_itineraries(:one).to_param
    end

    assert_redirected_to events_itineraries_path
  end
end
