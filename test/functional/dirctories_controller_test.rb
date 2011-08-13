require 'test_helper'

class DirctoriesControllerTest < ActionController::TestCase
  setup do
    @dirctory = dirctories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dirctories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dirctory" do
    assert_difference('Dirctory.count') do
      post :create, dirctory: @dirctory.attributes
    end

    assert_redirected_to dirctory_path(assigns(:dirctory))
  end

  test "should show dirctory" do
    get :show, id: @dirctory.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dirctory.to_param
    assert_response :success
  end

  test "should update dirctory" do
    put :update, id: @dirctory.to_param, dirctory: @dirctory.attributes
    assert_redirected_to dirctory_path(assigns(:dirctory))
  end

  test "should destroy dirctory" do
    assert_difference('Dirctory.count', -1) do
      delete :destroy, id: @dirctory.to_param
    end

    assert_redirected_to dirctories_path
  end
end
