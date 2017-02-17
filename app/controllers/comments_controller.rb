class CommentsController < ApplicationController
  def create
    @food_item = FoodItem.find(params[:food_item_id])
    @comment = @food_item.comments.build(comments_params)
    
    if @comment.save
      flash[:success] = "Your comment and rating is created"
      redirect_to (@food_item)
    else
      flash[:error] = @comments.errors.full_messages
    end
  end

  def new
    @food_item = FoodItem.find(params[:food_item_id])
    @comment = @food_item.comments.build
  end
  
  private
  
    def comments_params
      params.require(:comment).permit(:name, :content, :rate)
    end
end
