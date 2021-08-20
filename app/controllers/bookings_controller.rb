class BookingsController < ApplicationController
  require "date"

  def index
    @outgoing_bookings = Booking.where(user: current_user) # bookings i made
    if current_user.brains.any? # checking if user is host of brains
      @my_brains = current_user.brains # returns collection of brains
      @incoming_bookings = Booking.where(brain_id: @my_brains.pluck(:id))
    end
  end

  def new
    # we need @brain in our `simple_form_for`
    @brain = Brain.find(params[:brain_id])
    @booking = Booking.new
  end

  def calculate_total
    @first_date = Date.new(params[:booking]["start_date(1i)"].to_i, params[:booking]["start_date(2i)"].to_i, params[:booking]["start_date(3i)"].to_i)
    @second_date = Date.new(params[:booking]["end_date(1i)"].to_i, params[:booking]["end_date(2i)"].to_i, params[:booking]["end_date(3i)"].to_i)
    @total_of_days = (@second_date - @first_date).to_i
    @total = @total_of_days * @brain.price_per_minute * 1440
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `brain_id` to associate review with corresponding restaurant
    @brain = Brain.find(params[:brain_id])
    @booking.brain = @brain
    @booking.user = current_user
    @booking.total = calculate_total
    @booking.start_date = @first_date
    @booking.end_date = @second_date
    @booking.availability = false
    @booking.save
    @booking.pending = true
    redirect_to bookings_path
  end

  def show
    @booking = Booking.find(params[:id])
    @booking = Booking.new
    @brain = Brain.find(params[:brain_id])
    @booking.user = current_user
    @booking.brain = @brain

  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.accepted!
    @booking.pending = false
    @booking.status = 1
    redirect_to bookings_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.rejected!
    @booking.pending = false
    @booking.status = 2
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:content, :current_user, :brain_id, :start_date, :end_date, :price, :total)
  end
end
