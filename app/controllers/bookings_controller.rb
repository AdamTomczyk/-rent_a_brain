class BookingsController < ApplicationController
  require "date"
  def new
    # we need @brain in our `simple_form_for`
    @brain = Brain.find(params[:brain_id])
    @booking = Booking.new
  end

  def calculate_total
    @first_date = Date.new(params[:booking]["start_date(1i)"], params[:booking]["start_date(2i)"], params[:booking]["start_date(3i)"])
    @second_date = Date.new(params[:booking]["end_date(1i)"], params[:booking]["end_date(2i)"], params[:booking]["end_date(3i)"])
    @total_of_days = (@second_date - @first_date).to_i
    @total = @total_of_days * brain.price_per_minute
  end



  def create
    @booking = Booking.new(booking_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @brain = Brain.find(params[:brain_id])
    @booking.brain = @brain
    @booking.user = current_user
    params[booking(:start_date)]
    raise
    @booking.save
    redirect_to brain_path(@brain)
  end

  private

  def booking_params
    params.require(:booking).permit(:content)
  end
end
