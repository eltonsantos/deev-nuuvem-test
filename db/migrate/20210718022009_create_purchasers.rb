class CreatePurchasers < ActiveRecord::Migration[5.2]
  def change
    create_table :purchasers do |t|
      t.string :name

      t.timestamps
    end
    add_index :purchasers, :name
  end
end
