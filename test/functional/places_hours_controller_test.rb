require 'test_helper'

class PlacesHoursControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_hour" do
    assert_difference('PlacesHour.count') do
      post :create, :places_hour => { }
    end

    assert_redirected_to places_hour_path(assigns(:places_hour))
  end

  test "should show places_hour" do
    get :show, :id => places_hours(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => places_hours(:one).to_param
    assert_response :success
  end

  test "should update places_hour" do
    put :update, :id => places_hours(:one).to_param, :places_hour => { }
    assert_redirected_to places_hour_path(assigns(:places_hour))
  end

  test "should destroy places_hour" do
    assert_difference('PlacesHour.count', -1) do
      delete :destroy, :id => places_hours(:one).to_param
    end

    assert_redirected_to places_hours_path
  end
end
