class ReviewsController < ApplicationController
  before_action :set_review, only: [ :show, :create, :update, :destroy ]

  def index
    @reviews = Reviews.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @review
    else
      render :edit, status: :uprocessable_entity
    end
  end

  def destroy
    @review.destroy
    redirect_to @reviews_path
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end
end
