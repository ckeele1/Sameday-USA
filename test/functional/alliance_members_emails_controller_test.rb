require 'test_helper'

class AllianceMembersEmailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alliance_members_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alliance_members_email" do
    assert_difference('AllianceMembersEmail.count') do
      post :create, :alliance_members_email => { }
    end

    assert_redirected_to alliance_members_email_path(assigns(:alliance_members_email))
  end

  test "should show alliance_members_email" do
    get :show, :id => alliance_members_emails(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alliance_members_emails(:one).to_param
    assert_response :success
  end

  test "should update alliance_members_email" do
    put :update, :id => alliance_members_emails(:one).to_param, :alliance_members_email => { }
    assert_redirected_to alliance_members_email_path(assigns(:alliance_members_email))
  end

  test "should destroy alliance_members_email" do
    assert_difference('AllianceMembersEmail.count', -1) do
      delete :destroy, :id => alliance_members_emails(:one).to_param
    end

    assert_redirected_to alliance_members_emails_path
  end
end
