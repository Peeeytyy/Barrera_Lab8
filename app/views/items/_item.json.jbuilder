json.extract! item, :id, :quantity, :total, :product_id, :transaction_order_id, :created_at, :updated_at
json.url item_url(item, format: :json)
