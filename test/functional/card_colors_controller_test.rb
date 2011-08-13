require 'test_helper'

class CardColorsControllerTest < ActionController::TestCase
  setup do
    @card_color = card_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:card_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card_color" do
    assert_difference('CardColor.count') do
      post :create, card_color: @card_color.attributes
    end

    assert_redirected_to card_color_path(assigns(:card_color))
  end

  test "should show card_color" do
    get :show, id: @card_color.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card_color.to_param
    assert_response :success
  end

  test "should update card_color" do
    put :update, id: @card_color.to_param, card_color: @card_color.attributes
    assert_redirected_to card_color_path(assigns(:card_color))
  end

  test "should destroy card_color" do
    assert_difference('CardColor.count', -1) do
      delete :destroy, id: @card_color.to_param
    end

    assert_redirected_to card_colors_path
  end
end
