require "test_helper"

class TransactionOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_order = transaction_orders(:one)
  end

  test "should get index" do
    get transaction_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_order_url
    assert_response :success
  end

  test "should create transaction_order" do
    assert_difference("TransactionOrder.count") do
      post transaction_orders_url, params: { transaction_order: { total_amount: @transaction_order.total_amount, total_quantity: @transaction_order.total_quantity, transaction__date: @transaction_order.transaction__date } }
    end

    assert_redirected_to transaction_order_url(TransactionOrder.last)
  end

  test "should show transaction_order" do
    get transaction_order_url(@transaction_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_order_url(@transaction_order)
    assert_response :success
  end

  test "should update transaction_order" do
    patch transaction_order_url(@transaction_order), params: { transaction_order: { total_amount: @transaction_order.total_amount, total_quantity: @transaction_order.total_quantity, transaction__date: @transaction_order.transaction__date } }
    assert_redirected_to transaction_order_url(@transaction_order)
  end

  test "should destroy transaction_order" do
    assert_difference("TransactionOrder.count", -1) do
      delete transaction_order_url(@transaction_order)
    end

    assert_redirected_to transaction_orders_url
  end
end
