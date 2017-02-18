class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :orders
  has_many :comments, dependent: :destroy
  
  
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true

  
  is_impressionable
  
  def image_url_or_default
    image_url.presence || "http://loremflickr.com/320/240/moutain"
  end
  
  def self.search(search)
    if search
      where("name ILIKE ?", "%#{search}%") 
    else
      where
    end
  end
end
