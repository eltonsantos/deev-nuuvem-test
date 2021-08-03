require 'rails_helper'

describe Purchaser do
  context "Valid attributes of the purchaser" do
    it "Should be invalid without a name" do
      expect(Purchaser.new(name: "Elton Santos")).to be_valid
    end
    
    it "Should be valid with attribute" do
      expect(Purchaser.new).to_not be_valid
    end
  end
end
