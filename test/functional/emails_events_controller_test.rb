require 'test_helper'

class EmailsEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emails_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emails_event" do
    assert_difference('EmailsEvent.count') do
      post :create, :emails_event => { }
    end

    assert_redirected_to emails_event_path(assigns(:emails_event))
  end

  test "should show emails_event" do
    get :show, :id => emails_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => emails_events(:one).to_param
    assert_response :success
  end

  test "should update emails_event" do
    put :update, :id => emails_events(:one).to_param, :emails_event => { }
    assert_redirected_to emails_event_path(assigns(:emails_event))
  end

  test "should destroy emails_event" do
    assert_difference('EmailsEvent.count', -1) do
      delete :destroy, :id => emails_events(:one).to_param
    end

    assert_redirected_to emails_events_path
  end
end
