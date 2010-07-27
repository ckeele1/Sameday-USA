require 'test_helper'

class EventsEmailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_email" do
    assert_difference('EventsEmail.count') do
      post :create, :events_email => { }
    end

    assert_redirected_to events_email_path(assigns(:events_email))
  end

  test "should show events_email" do
    get :show, :id => events_emails(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events_emails(:one).to_param
    assert_response :success
  end

  test "should update events_email" do
    put :update, :id => events_emails(:one).to_param, :events_email => { }
    assert_redirected_to events_email_path(assigns(:events_email))
  end

  test "should destroy events_email" do
    assert_difference('EventsEmail.count', -1) do
      delete :destroy, :id => events_emails(:one).to_param
    end

    assert_redirected_to events_emails_path
  end
end
