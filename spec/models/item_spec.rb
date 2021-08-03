require 'rails_helper'

describe Item do
  context "Valid attributes of the item" do
    it "Should be valid with valid attributes" do
      expect(Item.new(description: "Coquinha pequena", price: 1.99)).to be_valid
    end
  
    it "Should be invalid without attributes" do
      expect(Item.new).to_not be_valid
    end
    
    it "Should be invalid without a price" do
      expect(Item.new(price: 1.99)).to_not be_valid
    end
  
    it "Should be invalid without a description" do
      expect(Item.new(description: "Coquinha pequena")).to_not be_valid
    end
  end
end
