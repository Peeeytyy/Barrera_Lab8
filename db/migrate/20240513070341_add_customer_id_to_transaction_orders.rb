class AddCustomerIdToTransactionOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :transaction_orders, :customer_id, :integer
  end
end
