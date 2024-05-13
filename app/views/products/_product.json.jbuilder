json.extract! product, :id, :name, :description, :quantity_on_hand, :unit_price, :created_at, :updated_at
json.url product_url(product, format: :json)
