class Item < ApplicationRecord
  belongs_to :product
  belongs_to :transaction_order
end
