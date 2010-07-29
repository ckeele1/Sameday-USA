require 'test_helper'

class EmailsPlacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emails_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emails_place" do
    assert_difference('EmailsPlace.count') do
      post :create, :emails_place => { }
    end

    assert_redirected_to emails_place_path(assigns(:emails_place))
  end

  test "should show emails_place" do
    get :show, :id => emails_places(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => emails_places(:one).to_param
    assert_response :success
  end

  test "should update emails_place" do
    put :update, :id => emails_places(:one).to_param, :emails_place => { }
    assert_redirected_to emails_place_path(assigns(:emails_place))
  end

  test "should destroy emails_place" do
    assert_difference('EmailsPlace.count', -1) do
      delete :destroy, :id => emails_places(:one).to_param
    end

    assert_redirected_to emails_places_path
  end
end
