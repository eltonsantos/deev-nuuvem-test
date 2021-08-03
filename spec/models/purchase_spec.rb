require 'rails_helper'

describe Purchase do
  context "Valid attributes of the order" do
    it "Should be valid with valid attributes" do
      purchaser = Purchaser.create(name: "Elton Santos")
      item = Item.create(description: "Coquinha pequena", price: 1.99)
      merchant = Merchant.create(name: "Ericson Santos LTDA", address: "Avenida Dedé Brasil")
      order = Order.create
      expect(Purchase.new(purchaser: purchaser, item: item, merchant: merchant, order: order, quantity: 5)).to be_valid
    end
    
    it "Should be invalid without valid purchaser" do
      item = Item.create(description: "Coquinha pequena", price: 1.99)
      merchant = Merchant.create(name: "Ericson Santos LTDA", address: "Avenida Dedé Brasil")
      order = Order.create
      expect(Purchase.new(item: item, merchant: merchant, order: order, quantity: 5)).to_not be_valid
    end
  
    it "Should be invalid without valid item" do
      purchaser = Purchaser.create(name: "Elton Santos")
      merchant = Merchant.create(name: "Ericson Santos LTDA", address: "Avenida Dedé Brasil")
      order = Order.create
      expect(Purchase.new(purchaser: purchaser, merchant: merchant, order: order, quantity: 5)).to_not be_valid
    end
  
    it "Should be invalid without valid merchant" do
      purchaser = Purchaser.create(name: "Elton Santos")
      item = Item.create(description: "Coquinha pequena", price: 1.99)
      order = Order.create
      expect(Purchase.new(purchaser: purchaser, item: item, order: order, quantity: 5)).to_not be_valid
    end
  
    it "Should be invalid without valid order" do
      purchaser = Purchaser.create(name: "Elton Santos")
      item = Item.create(description: "Coquinha pequena", price: 1.99)
      merchant = Merchant.create(name: "Ericson Santos LTDA", address: "Avenida Dedé Brasil")
      expect(Purchase.new(purchaser: purchaser, item: item, merchant: merchant, quantity: 5)).to_not be_valid
    end
  end
end
