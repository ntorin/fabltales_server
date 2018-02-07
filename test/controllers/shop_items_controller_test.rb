require 'test_helper'

class ShopItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_item = shop_items(:one)
  end

  test "should get index" do
    get shop_items_url, as: :json
    assert_response :success
  end

  test "should create shop_item" do
    assert_difference('ShopItem.count') do
      post shop_items_url, params: { shop_item: { description: @shop_item.description, image: @shop_item.image, name: @shop_item.name, price: @shop_item.price } }, as: :json
    end

    assert_response 201
  end

  test "should show shop_item" do
    get shop_item_url(@shop_item), as: :json
    assert_response :success
  end

  test "should update shop_item" do
    patch shop_item_url(@shop_item), params: { shop_item: { description: @shop_item.description, image: @shop_item.image, name: @shop_item.name, price: @shop_item.price } }, as: :json
    assert_response 200
  end

  test "should destroy shop_item" do
    assert_difference('ShopItem.count', -1) do
      delete shop_item_url(@shop_item), as: :json
    end

    assert_response 204
  end
end
