class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :orders
  
  validates :name, presence: true
  
  def image_url_or_default
    image_url.presence || "http://loremflickr.com/320/240/moutain"
  end
end
