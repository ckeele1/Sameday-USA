require 'test_helper'

class CouponsEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coupons_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coupons_event" do
    assert_difference('CouponsEvent.count') do
      post :create, :coupons_event => { }
    end

    assert_redirected_to coupons_event_path(assigns(:coupons_event))
  end

  test "should show coupons_event" do
    get :show, :id => coupons_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => coupons_events(:one).to_param
    assert_response :success
  end

  test "should update coupons_event" do
    put :update, :id => coupons_events(:one).to_param, :coupons_event => { }
    assert_redirected_to coupons_event_path(assigns(:coupons_event))
  end

  test "should destroy coupons_event" do
    assert_difference('CouponsEvent.count', -1) do
      delete :destroy, :id => coupons_events(:one).to_param
    end

    assert_redirected_to coupons_events_path
  end
end
