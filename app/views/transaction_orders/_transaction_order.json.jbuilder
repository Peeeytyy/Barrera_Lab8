json.extract! transaction_order, :id, :transaction__date, :total_amount, :total_quantity, :created_at, :updated_at
json.url transaction_order_url(transaction_order, format: :json)
