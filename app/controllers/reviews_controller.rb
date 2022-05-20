class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    
    @review = Review.new(reviews_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      redirect_to list_path(@list)
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:comment, :rating)
  end
end
