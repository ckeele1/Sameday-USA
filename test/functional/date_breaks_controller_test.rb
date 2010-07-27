require 'test_helper'

class DateBreaksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:date_breaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create date_break" do
    assert_difference('DateBreak.count') do
      post :create, :date_break => { }
    end

    assert_redirected_to date_break_path(assigns(:date_break))
  end

  test "should show date_break" do
    get :show, :id => date_breaks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => date_breaks(:one).to_param
    assert_response :success
  end

  test "should update date_break" do
    put :update, :id => date_breaks(:one).to_param, :date_break => { }
    assert_redirected_to date_break_path(assigns(:date_break))
  end

  test "should destroy date_break" do
    assert_difference('DateBreak.count', -1) do
      delete :destroy, :id => date_breaks(:one).to_param
    end

    assert_redirected_to date_breaks_path
  end
end
