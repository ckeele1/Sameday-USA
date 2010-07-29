require 'test_helper'

class HoursEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hours_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hours_event" do
    assert_difference('HoursEvent.count') do
      post :create, :hours_event => { }
    end

    assert_redirected_to hours_event_path(assigns(:hours_event))
  end

  test "should show hours_event" do
    get :show, :id => hours_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hours_events(:one).to_param
    assert_response :success
  end

  test "should update hours_event" do
    put :update, :id => hours_events(:one).to_param, :hours_event => { }
    assert_redirected_to hours_event_path(assigns(:hours_event))
  end

  test "should destroy hours_event" do
    assert_difference('HoursEvent.count', -1) do
      delete :destroy, :id => hours_events(:one).to_param
    end

    assert_redirected_to hours_events_path
  end
end
