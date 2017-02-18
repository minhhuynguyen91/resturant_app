class Comment < ApplicationRecord
  belongs_to :food_item
  validates :name, presence: true
  validates :content, presence: true
end
