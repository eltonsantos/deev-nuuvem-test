class Merchant < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :address
end
