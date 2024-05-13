class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :quantity_on_hand, default: 0
      t.float :unit_price

      t.timestamps
    end
  end
end
