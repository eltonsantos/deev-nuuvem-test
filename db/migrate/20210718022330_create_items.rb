class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
    add_index :items, :description
    add_index :items, :price
  end
end
