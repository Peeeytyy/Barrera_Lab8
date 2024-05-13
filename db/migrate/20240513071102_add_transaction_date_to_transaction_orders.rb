class AddTransactionDateToTransactionOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :transaction_orders, :transaction_date, :date
  end
end
