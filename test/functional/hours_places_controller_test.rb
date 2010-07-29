require 'test_helper'

class HoursPlacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hours_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hours_place" do
    assert_difference('HoursPlace.count') do
      post :create, :hours_place => { }
    end

    assert_redirected_to hours_place_path(assigns(:hours_place))
  end

  test "should show hours_place" do
    get :show, :id => hours_places(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hours_places(:one).to_param
    assert_response :success
  end

  test "should update hours_place" do
    put :update, :id => hours_places(:one).to_param, :hours_place => { }
    assert_redirected_to hours_place_path(assigns(:hours_place))
  end

  test "should destroy hours_place" do
    assert_difference('HoursPlace.count', -1) do
      delete :destroy, :id => hours_places(:one).to_param
    end

    assert_redirected_to hours_places_path
  end
end
