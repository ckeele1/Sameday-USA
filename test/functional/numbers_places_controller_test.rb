require 'test_helper'

class NumbersPlacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:numbers_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create numbers_place" do
    assert_difference('NumbersPlace.count') do
      post :create, :numbers_place => { }
    end

    assert_redirected_to numbers_place_path(assigns(:numbers_place))
  end

  test "should show numbers_place" do
    get :show, :id => numbers_places(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => numbers_places(:one).to_param
    assert_response :success
  end

  test "should update numbers_place" do
    put :update, :id => numbers_places(:one).to_param, :numbers_place => { }
    assert_redirected_to numbers_place_path(assigns(:numbers_place))
  end

  test "should destroy numbers_place" do
    assert_difference('NumbersPlace.count', -1) do
      delete :destroy, :id => numbers_places(:one).to_param
    end

    assert_redirected_to numbers_places_path
  end
end
