require "application_system_test_case"

class TransactionOrdersTest < ApplicationSystemTestCase
  setup do
    @transaction_order = transaction_orders(:one)
  end

  test "visiting the index" do
    visit transaction_orders_url
    assert_selector "h1", text: "Transaction orders"
  end

  test "should create transaction order" do
    visit transaction_orders_url
    click_on "New transaction order"

    fill_in "Total amount", with: @transaction_order.total_amount
    fill_in "Total quantity", with: @transaction_order.total_quantity
    fill_in "Transaction  date", with: @transaction_order.transaction__date
    click_on "Create Transaction order"

    assert_text "Transaction order was successfully created"
    click_on "Back"
  end

  test "should update Transaction order" do
    visit transaction_order_url(@transaction_order)
    click_on "Edit this transaction order", match: :first

    fill_in "Total amount", with: @transaction_order.total_amount
    fill_in "Total quantity", with: @transaction_order.total_quantity
    fill_in "Transaction  date", with: @transaction_order.transaction__date
    click_on "Update Transaction order"

    assert_text "Transaction order was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction order" do
    visit transaction_order_url(@transaction_order)
    click_on "Destroy this transaction order", match: :first

    assert_text "Transaction order was successfully destroyed"
  end
end
