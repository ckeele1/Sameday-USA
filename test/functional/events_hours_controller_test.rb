require 'test_helper'

class EventsHoursControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_hour" do
    assert_difference('EventsHour.count') do
      post :create, :events_hour => { }
    end

    assert_redirected_to events_hour_path(assigns(:events_hour))
  end

  test "should show events_hour" do
    get :show, :id => events_hours(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events_hours(:one).to_param
    assert_response :success
  end

  test "should update events_hour" do
    put :update, :id => events_hours(:one).to_param, :events_hour => { }
    assert_redirected_to events_hour_path(assigns(:events_hour))
  end

  test "should destroy events_hour" do
    assert_difference('EventsHour.count', -1) do
      delete :destroy, :id => events_hours(:one).to_param
    end

    assert_redirected_to events_hours_path
  end
end
