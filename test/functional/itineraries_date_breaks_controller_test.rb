require 'test_helper'

class ItinerariesDateBreaksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itineraries_date_breaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itineraries_date_break" do
    assert_difference('ItinerariesDateBreak.count') do
      post :create, :itineraries_date_break => { }
    end

    assert_redirected_to itineraries_date_break_path(assigns(:itineraries_date_break))
  end

  test "should show itineraries_date_break" do
    get :show, :id => itineraries_date_breaks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itineraries_date_breaks(:one).to_param
    assert_response :success
  end

  test "should update itineraries_date_break" do
    put :update, :id => itineraries_date_breaks(:one).to_param, :itineraries_date_break => { }
    assert_redirected_to itineraries_date_break_path(assigns(:itineraries_date_break))
  end

  test "should destroy itineraries_date_break" do
    assert_difference('ItinerariesDateBreak.count', -1) do
      delete :destroy, :id => itineraries_date_breaks(:one).to_param
    end

    assert_redirected_to itineraries_date_breaks_path
  end
end
