require 'test_helper'

class ItinerariesEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itineraries_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itineraries_event" do
    assert_difference('ItinerariesEvent.count') do
      post :create, :itineraries_event => { }
    end

    assert_redirected_to itineraries_event_path(assigns(:itineraries_event))
  end

  test "should show itineraries_event" do
    get :show, :id => itineraries_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itineraries_events(:one).to_param
    assert_response :success
  end

  test "should update itineraries_event" do
    put :update, :id => itineraries_events(:one).to_param, :itineraries_event => { }
    assert_redirected_to itineraries_event_path(assigns(:itineraries_event))
  end

  test "should destroy itineraries_event" do
    assert_difference('ItinerariesEvent.count', -1) do
      delete :destroy, :id => itineraries_events(:one).to_param
    end

    assert_redirected_to itineraries_events_path
  end
end
