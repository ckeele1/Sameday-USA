require 'test_helper'

class GroupsTablesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groups_table" do
    assert_difference('GroupsTable.count') do
      post :create, :groups_table => { }
    end

    assert_redirected_to groups_table_path(assigns(:groups_table))
  end

  test "should show groups_table" do
    get :show, :id => groups_tables(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => groups_tables(:one).to_param
    assert_response :success
  end

  test "should update groups_table" do
    put :update, :id => groups_tables(:one).to_param, :groups_table => { }
    assert_redirected_to groups_table_path(assigns(:groups_table))
  end

  test "should destroy groups_table" do
    assert_difference('GroupsTable.count', -1) do
      delete :destroy, :id => groups_tables(:one).to_param
    end

    assert_redirected_to groups_tables_path
  end
end
