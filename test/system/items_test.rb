require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Product", with: @item.product_id
    fill_in "Quantity", with: @item.quantity
    fill_in "Total", with: @item.total
    fill_in "Transaction order", with: @item.transaction_order_id
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Product", with: @item.product_id
    fill_in "Quantity", with: @item.quantity
    fill_in "Total", with: @item.total
    fill_in "Transaction order", with: @item.transaction_order_id
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
