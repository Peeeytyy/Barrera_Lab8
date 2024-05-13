class TransactionOrder < ApplicationRecord
    has_many :items
    belongs_to :customer
end
