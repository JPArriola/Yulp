class Api::ReviewsController < ApplicationController
  def create
    @review = current_user.reviews.new(review_params)

    if @review.save
      render :show
    else
      render json: @review, status: :unprocessable_entity
    end
  end

  def update

  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
  end

  def review_params
    params.require(:review).permit(:body, :rating, :biz_id)
  end
end
