class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, presence: true
  
end
