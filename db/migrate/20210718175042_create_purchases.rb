class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :order, foreign_key: true
      t.references :item, foreign_key: true
      t.references :merchant, foreign_key: true
      t.references :purchaser, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
