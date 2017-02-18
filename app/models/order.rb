class Order < ApplicationRecord
  belongs_to :food_item
  validates :customer_name, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :quantity, :numericality => { :greater_than => 0 }
end
