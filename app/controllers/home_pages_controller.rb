class HomePagesController < ApplicationController
  def menu
    @sections = Section.all
    if params[:section_id].present?
      @current_section = Section.find(params[:section_id])
    end

    case params[:sort_type]
      when "name" 
        @food_items = FoodItem.all.order(:name)
      when "high_price"
        @food_items = FoodItem.all.order(:price => :desc)
      when "low_price"
        @food_items = FoodItem.all.order(:price)
      else
        @food_items = FoodItem.all.order(:id)
    end


  end

  def contact_us
  end
end
