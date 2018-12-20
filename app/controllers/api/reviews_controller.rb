class Api::ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end

  def create
    # review_params.author_id = current_user.id;
    @review = Review.new(review_params)
    @review.author_id = current_user.id
    if @review.save
      render :show
    else
      render json: @review, status: :unprocessable_entity
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      render :show
    else
      render json: @revies.errors.full_messages, status: 422
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
  end

  def review_params
    params.require(:review).permit(:body, :rating, :biz_id)
  end
end

