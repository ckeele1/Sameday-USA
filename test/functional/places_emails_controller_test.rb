require 'test_helper'

class PlacesEmailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_email" do
    assert_difference('PlacesEmail.count') do
      post :create, :places_email => { }
    end

    assert_redirected_to places_email_path(assigns(:places_email))
  end

  test "should show places_email" do
    get :show, :id => places_emails(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => places_emails(:one).to_param
    assert_response :success
  end

  test "should update places_email" do
    put :update, :id => places_emails(:one).to_param, :places_email => { }
    assert_redirected_to places_email_path(assigns(:places_email))
  end

  test "should destroy places_email" do
    assert_difference('PlacesEmail.count', -1) do
      delete :destroy, :id => places_emails(:one).to_param
    end

    assert_redirected_to places_emails_path
  end
end
