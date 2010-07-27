require 'test_helper'

class PlacesNumbersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_number" do
    assert_difference('PlacesNumber.count') do
      post :create, :places_number => { }
    end

    assert_redirected_to places_number_path(assigns(:places_number))
  end

  test "should show places_number" do
    get :show, :id => places_numbers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => places_numbers(:one).to_param
    assert_response :success
  end

  test "should update places_number" do
    put :update, :id => places_numbers(:one).to_param, :places_number => { }
    assert_redirected_to places_number_path(assigns(:places_number))
  end

  test "should destroy places_number" do
    assert_difference('PlacesNumber.count', -1) do
      delete :destroy, :id => places_numbers(:one).to_param
    end

    assert_redirected_to places_numbers_path
  end
end
