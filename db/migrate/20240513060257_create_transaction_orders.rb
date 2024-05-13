class CreateTransactionOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :transaction_orders do |t|
      t.date :transaction__date
      t.float :total_amount, default: 0.0
      t.integer :total_quantity, default: 0

      t.timestamps
    end
  end
end
