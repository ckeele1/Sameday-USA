require 'test_helper'

class EventsNumbersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_number" do
    assert_difference('EventsNumber.count') do
      post :create, :events_number => { }
    end

    assert_redirected_to events_number_path(assigns(:events_number))
  end

  test "should show events_number" do
    get :show, :id => events_numbers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events_numbers(:one).to_param
    assert_response :success
  end

  test "should update events_number" do
    put :update, :id => events_numbers(:one).to_param, :events_number => { }
    assert_redirected_to events_number_path(assigns(:events_number))
  end

  test "should destroy events_number" do
    assert_difference('EventsNumber.count', -1) do
      delete :destroy, :id => events_numbers(:one).to_param
    end

    assert_redirected_to events_numbers_path
  end
end
