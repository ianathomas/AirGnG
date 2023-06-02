class RoomsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show, :home]

  def home
    @rooms = Room.all
    render "rooms/home"
  end
  
  def index
    @rooms = Room.all
    render :index
  end

  def show
    @room = Room.find_by(id: params["id"])
    render :show
  end

  def create
    @room = Room.create({
      user_id: params["user_id"],
      planet: params["planet"],
      price: params["price"],
      total_occupancy: params["total_occupancy"],
      total_bedrooms: params["total_bedrooms"],
      total_bathrooms: params["total_bathrooms"],
      home_type: params[" home_type"],
      section: params["section"],
    })

    if @room.valid?
      Room_Image.create(room_id: @room.id, url: params["image_url"])
      render :show
    else
      render json: { errors: @room.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @room = Room.find_by(id: params["id"])
    @room.update(
      user_id: params["user_id"],
      planet: params["planet"],
      price: params["price"],
      total_occupancy: params["total_occupancy"],
      total_bedrooms: params["total_bedrooms"],
      total_bathrooms: params["total_bathrooms"],
      home_type: params[" home_type"],
      section: params["section"],
    )

    if @room.valid?
      render :show
    else
      render json: { errors: @room.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @room = Room.find_by(id: params["id"])
    @room.destroy

    render json: { message: "Room Destruction Completed" }
  end
end
