class Comment < ApplicationRecord
  belongs_to :food_item
  validates :name, presence: true
end
