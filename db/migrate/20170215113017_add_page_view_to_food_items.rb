class AddPageViewToFoodItems < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :view, :integer
  end
end
