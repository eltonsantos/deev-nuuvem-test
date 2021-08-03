require 'rails_helper'

describe Merchant do
  context "Valid attributes of the merchant" do
    it "Should be valid with valid attributes" do
      expect(Merchant.new(name: "Ericson Santos", address: "Avenida Dedé Brasil")).to be_valid
    end
    
    it "Should be invalid without attributes" do
      expect(Merchant.new).to_not be_valid
    end
  
    it "Should be invalid without a address" do
      expect(Merchant.new(address: "Ericson Santos")).to_not be_valid
    end
  
    it "Should be invalid without a name" do
      expect(Merchant.new(name: "Avenida Dedé Brasil")).to_not be_valid
    end
  end
end
