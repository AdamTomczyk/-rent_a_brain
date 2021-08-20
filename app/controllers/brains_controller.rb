class BrainsController < ApplicationController
  before_action :set_brain, only: [:show, :edit, :update, :destroy]

  def index
    @brains = Brain.all
    # the `geocoded` scope filters only brains with coordinates (latitude & longitude)
    @markers = @brains.geocoded.map do |brain|
      {
        lat: brain.latitude,
        lng: brain.longitude,
        info_window: render_to_string(partial: "info_window", locals: { brain: brain }),
        image_url: helpers.asset_url('brain_logo_emoji.png')
      }
    end
    if params[:query].present?
      @brains = Brain.where(category: params[:query])
    else
      @brains = Brain.all
    end
  end

  def show
    @brain = Brain.find(params[:id])
  end

  def new
    @brain = Brain.new
  end

  def edit
  end

  # POST /brains
  def create
    @brain = Brain.new(brain_params)
    @brain.icon_path = @brain.set_icon_path
    # @brain.user = current_user
    @brain.user = current_user

    if @brain.save
      redirect_to @brain, notice: 'Brain was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /brains/1
  def update
    if @brain.update(brain_params)
      redirect_to @brain, notice: 'Brain was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /brains/1
  def destroy
    @brain.destroy
    redirect_to brains_path, notice: 'Brain was successfully destroyed.'
  end

  private

  def set_brain
    @brain = Brain.find(params[:id])
  end

  def brain_params
    params.require(:brain).permit(:name, :category, :description, :address, :eq, :iq, :price_per_minute)
  end
end
