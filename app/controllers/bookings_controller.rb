class BookingsController < ApplicationController
  require "date"

  def index
    @bookings = Booking.where(user_id: current_user)
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
    # we need `restaurant_id` to associate review with corresponding restaurant
    @brain = Brain.find(params[:brain_id])
    @booking.brain = @brain
    @booking.user = current_user
    @booking.total = calculate_total
    @booking.start_date = @first_date
    @booking.end_date = @second_date
    @booking.availability = false
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:content)
  end
end
