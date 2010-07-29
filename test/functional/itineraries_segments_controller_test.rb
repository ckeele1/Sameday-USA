require 'test_helper'

class ItinerariesSegmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itineraries_segments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itineraries_segment" do
    assert_difference('ItinerariesSegment.count') do
      post :create, :itineraries_segment => { }
    end

    assert_redirected_to itineraries_segment_path(assigns(:itineraries_segment))
  end

  test "should show itineraries_segment" do
    get :show, :id => itineraries_segments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itineraries_segments(:one).to_param
    assert_response :success
  end

  test "should update itineraries_segment" do
    put :update, :id => itineraries_segments(:one).to_param, :itineraries_segment => { }
    assert_redirected_to itineraries_segment_path(assigns(:itineraries_segment))
  end

  test "should destroy itineraries_segment" do
    assert_difference('ItinerariesSegment.count', -1) do
      delete :destroy, :id => itineraries_segments(:one).to_param
    end

    assert_redirected_to itineraries_segments_path
  end
end
