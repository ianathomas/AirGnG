class ReservationsController < ApplicationController
  before_action :authenticate_user

  def index
    @reservations = Reservation.all

    render :index
  end

  def show
    @reservation = current_user.reservations.find_by(id: params["id"])

    render :show
  end

  def create
    @reservation = Reservation.create(
      user_id: current_user.id,
      room_id: current_user.room.id,
      start_date: params["start_date"],
      end_date: params["end_date"],
      price: current_user.room.price,
    )

    render :show
  end

  def update
    @reservation = Reservation.find_by(id: params["id"])
    @reservation.update(
      start_date: params["start_date"] || @reservation.start_date,
      end_date: params["end_date"] || @reservation.end_date,
      price: params["price"] || @reservation.price,
    )
    if @reservation.valid?
      render :show
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    reservation = Reservation.find_by(id: params["id"])
    reservation.destroy

    render json: { message: "Reservation destroyed successfully" }
  end
end
