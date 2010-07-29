require 'test_helper'

class PlacesCouponsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_coupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_coupon" do
    assert_difference('PlacesCoupon.count') do
      post :create, :places_coupon => { }
    end

    assert_redirected_to places_coupon_path(assigns(:places_coupon))
  end

  test "should show places_coupon" do
    get :show, :id => places_coupons(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => places_coupons(:one).to_param
    assert_response :success
  end

  test "should update places_coupon" do
    put :update, :id => places_coupons(:one).to_param, :places_coupon => { }
    assert_redirected_to places_coupon_path(assigns(:places_coupon))
  end

  test "should destroy places_coupon" do
    assert_difference('PlacesCoupon.count', -1) do
      delete :destroy, :id => places_coupons(:one).to_param
    end

    assert_redirected_to places_coupons_path
  end
end
