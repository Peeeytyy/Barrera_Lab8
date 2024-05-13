class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.integer :quantity
      t.float :total
      t.references :product, null: false, foreign_key: true
      t.references :transaction_order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
