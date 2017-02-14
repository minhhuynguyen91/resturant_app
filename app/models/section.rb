class Section < ApplicationRecord
  validates :name, presence: true
  has_many :food_items, dependent: :destroy
end