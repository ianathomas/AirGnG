class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render :index
  end

  def show
    @review = Review.find_by(id: params["id"])
    render :show
  end

  def create
    @review = Review.create({
      reservation_id: params["reservation_id"],
      rating: params["rating"],
      comment: params["comment"],
    })

    if @review.save
      redirect_to @review
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @review = Review.find_by(id: params["id"])
    @review.update(
      reservation_id: params["reservation_id"],
      rating: params["rating"],
      comment: params["comment"],
    )

    if @room.valid?
      render :show
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find_by(id: params["id"])
    @review.destroy

    render json: { message: "Review Destroyed" }
  end

  private

  def review_params
    params.require(:reservation_id).permit(:rating, :comment)
  end
end
