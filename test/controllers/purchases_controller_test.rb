require "test_helper"

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase = purchases(:one)
  end

  test "should get index" do
    get purchases_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_url
    assert_response :success
  end

  test "should create purchase" do
    assert_difference('Purchase.count') do
      post purchases_url, params: { purchase: { _price: @purchase._price, count: @purchase.count, customer_id: @purchase.customer_id, name_product: @purchase.name_product, plus_info: @purchase.plus_info, stage_buy: @purchase.stage_buy, stage_in_corp: @purchase.stage_in_corp } }
    end

    assert_redirected_to purchase_url(Purchase.last)
  end

  test "should show purchase" do
    get purchase_url(@purchase)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_url(@purchase)
    assert_response :success
  end

  test "should update purchase" do
    patch purchase_url(@purchase), params: { purchase: { _price: @purchase._price, count: @purchase.count, customer_id: @purchase.customer_id, name_product: @purchase.name_product, plus_info: @purchase.plus_info, stage_buy: @purchase.stage_buy, stage_in_corp: @purchase.stage_in_corp } }
    assert_redirected_to purchase_url(@purchase)
  end

  test "should destroy purchase" do
    assert_difference('Purchase.count', -1) do
      delete purchase_url(@purchase)
    end

    assert_redirected_to purchases_url
  end
end
