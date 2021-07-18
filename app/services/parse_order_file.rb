require 'csv'

class ParseOrderFile
    include Interactor

    def call
        purchases = []
        ActiveRecord::Base.transaction do
            order = Order.create
            CSV.foreach(context.file.path, headers: true, quote_char: "§", col_sep: "\t") do |row|
                item = Item.find_or_create_by(description: row["item description"], price: row["item price"]);
                merchant = Merchant.find_or_create_by(name: row["merchant name"], address: row["merchant address"])
                purchaser = Purchaser.find_or_create_by(name: row["purchaser name"])
                purchase = Purchase.create(order: order, item: item, merchant: merchant, purchaser: purchaser, quantity: row["purchase count"])
                unless purchase.persisted?
                    context.fail!(message: "Failed to parse CSV file.")
                end
                purchases << purchase
                context.order = order
                context.purchases = purchases
            end
        end
    end
end
