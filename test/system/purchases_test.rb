require "application_system_test_case"

class PurchasesTest < ApplicationSystemTestCase
  setup do
    @purchase = purchases(:one)
  end

  test "visiting the index" do
    visit purchases_url
    assert_selector "h1", text: "Purchases"
  end

  test "creating a Purchase" do
    visit purchases_url
    click_on "New Purchase"

    fill_in "Price", with: @purchase._price
    fill_in "Count", with: @purchase.count
    fill_in "Customer", with: @purchase.customer_id
    fill_in "Name product", with: @purchase.name_product
    fill_in "Plus info", with: @purchase.plus_info
    fill_in "Stage buy", with: @purchase.stage_buy
    fill_in "Stage in corp", with: @purchase.stage_in_corp
    click_on "Create Purchase"

    assert_text "Purchase was successfully created"
    click_on "Back"
  end

  test "updating a Purchase" do
    visit purchases_url
    click_on "Edit", match: :first

    fill_in "Price", with: @purchase._price
    fill_in "Count", with: @purchase.count
    fill_in "Customer", with: @purchase.customer_id
    fill_in "Name product", with: @purchase.name_product
    fill_in "Plus info", with: @purchase.plus_info
    fill_in "Stage buy", with: @purchase.stage_buy
    fill_in "Stage in corp", with: @purchase.stage_in_corp
    click_on "Update Purchase"

    assert_text "Purchase was successfully updated"
    click_on "Back"
  end

  test "destroying a Purchase" do
    visit purchases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purchase was successfully destroyed"
  end
end
