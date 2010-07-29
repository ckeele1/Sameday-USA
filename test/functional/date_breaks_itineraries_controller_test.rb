require 'test_helper'

class DateBreaksItinerariesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:date_breaks_itineraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create date_breaks_itinerary" do
    assert_difference('DateBreaksItinerary.count') do
      post :create, :date_breaks_itinerary => { }
    end

    assert_redirected_to date_breaks_itinerary_path(assigns(:date_breaks_itinerary))
  end

  test "should show date_breaks_itinerary" do
    get :show, :id => date_breaks_itineraries(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => date_breaks_itineraries(:one).to_param
    assert_response :success
  end

  test "should update date_breaks_itinerary" do
    put :update, :id => date_breaks_itineraries(:one).to_param, :date_breaks_itinerary => { }
    assert_redirected_to date_breaks_itinerary_path(assigns(:date_breaks_itinerary))
  end

  test "should destroy date_breaks_itinerary" do
    assert_difference('DateBreaksItinerary.count', -1) do
      delete :destroy, :id => date_breaks_itineraries(:one).to_param
    end

    assert_redirected_to date_breaks_itineraries_path
  end
end
