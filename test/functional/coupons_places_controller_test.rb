require 'test_helper'

class CouponsPlacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coupons_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coupons_place" do
    assert_difference('CouponsPlace.count') do
      post :create, :coupons_place => { }
    end

    assert_redirected_to coupons_place_path(assigns(:coupons_place))
  end

  test "should show coupons_place" do
    get :show, :id => coupons_places(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => coupons_places(:one).to_param
    assert_response :success
  end

  test "should update coupons_place" do
    put :update, :id => coupons_places(:one).to_param, :coupons_place => { }
    assert_redirected_to coupons_place_path(assigns(:coupons_place))
  end

  test "should destroy coupons_place" do
    assert_difference('CouponsPlace.count', -1) do
      delete :destroy, :id => coupons_places(:one).to_param
    end

    assert_redirected_to coupons_places_path
  end
end
