require 'test_helper'

class PromosControllerTest < ActionController::TestCase
  setup do
    @promo = promos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promo" do
    assert_difference('Promo.count') do
      post :create, promo: { end_date: @promo.end_date, promo_type: @promo.promo_type, stock_id: @promo.stock_id }
    end

    assert_redirected_to promo_path(assigns(:promo))
  end

  test "should show promo" do
    get :show, id: @promo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promo
    assert_response :success
  end

  test "should update promo" do
    patch :update, id: @promo, promo: { end_date: @promo.end_date, promo_type: @promo.promo_type, stock_id: @promo.stock_id }
    assert_redirected_to promo_path(assigns(:promo))
  end

  test "should destroy promo" do
    assert_difference('Promo.count', -1) do
      delete :destroy, id: @promo
    end

    assert_redirected_to promos_path
  end
end
