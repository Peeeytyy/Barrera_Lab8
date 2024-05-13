json.extract! customer, :id, :name, :email_address, :monthly_bill, :created_at, :updated_at
json.url customer_url(customer, format: :json)
