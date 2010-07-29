require 'test_helper'

class EventsCouponsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_coupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_coupon" do
    assert_difference('EventsCoupon.count') do
      post :create, :events_coupon => { }
    end

    assert_redirected_to events_coupon_path(assigns(:events_coupon))
  end

  test "should show events_coupon" do
    get :show, :id => events_coupons(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events_coupons(:one).to_param
    assert_response :success
  end

  test "should update events_coupon" do
    put :update, :id => events_coupons(:one).to_param, :events_coupon => { }
    assert_redirected_to events_coupon_path(assigns(:events_coupon))
  end

  test "should destroy events_coupon" do
    assert_difference('EventsCoupon.count', -1) do
      delete :destroy, :id => events_coupons(:one).to_param
    end

    assert_redirected_to events_coupons_path
  end
end
