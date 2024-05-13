class Customer < ApplicationRecord
    has_many :transaction_orders
    has_many :items, through: :transaction_orders
end
