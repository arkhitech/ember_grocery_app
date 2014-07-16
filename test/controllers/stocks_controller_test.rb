require 'test_helper'

class StocksControllerTest < ActionController::TestCase
  setup do
    @stock = stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock" do
    assert_difference('Stock.count') do
      post :create, stock: { additional_text: @stock.additional_text, artifical_sweetener_status: @stock.artifical_sweetener_status, artificial_coloring_status: @stock.artificial_coloring_status, artificial_flavoring_status: @stock.artificial_flavoring_status, brand_id: @stock.brand_id, creator: @stock.creator, food_conditioner_status: @stock.food_conditioner_status, halal_certification_issuer: @stock.halal_certification_issuer, halal_status: @stock.halal_status, internal_note: @stock.internal_note, name: @stock.name, normal_price: @stock.normal_price, packaging: @stock.packaging, parent_id: @stock.parent_id, picture: @stock.picture, preservatives_status: @stock.preservatives_status, product_group_id: @stock.product_group_id, product_note: @stock.product_note, product_price_group: @stock.product_price_group, returnable: @stock.returnable, size: @stock.size, status: @stock.status, store_name: @stock.store_name, units_of_item: @stock.units_of_item }
    end

    assert_redirected_to stock_path(assigns(:stock))
  end

  test "should show stock" do
    get :show, id: @stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock
    assert_response :success
  end

  test "should update stock" do
    patch :update, id: @stock, stock: { additional_text: @stock.additional_text, artifical_sweetener_status: @stock.artifical_sweetener_status, artificial_coloring_status: @stock.artificial_coloring_status, artificial_flavoring_status: @stock.artificial_flavoring_status, brand_id: @stock.brand_id, creator: @stock.creator, food_conditioner_status: @stock.food_conditioner_status, halal_certification_issuer: @stock.halal_certification_issuer, halal_status: @stock.halal_status, internal_note: @stock.internal_note, name: @stock.name, normal_price: @stock.normal_price, packaging: @stock.packaging, parent_id: @stock.parent_id, picture: @stock.picture, preservatives_status: @stock.preservatives_status, product_group_id: @stock.product_group_id, product_note: @stock.product_note, product_price_group: @stock.product_price_group, returnable: @stock.returnable, size: @stock.size, status: @stock.status, store_name: @stock.store_name, units_of_item: @stock.units_of_item }
    assert_redirected_to stock_path(assigns(:stock))
  end

  test "should destroy stock" do
    assert_difference('Stock.count', -1) do
      delete :destroy, id: @stock
    end

    assert_redirected_to stocks_path
  end
end
