class FlatsController < ApplicationController

  before_action :set_flat, only: %i[show edit update destroy]
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flats_params)
    if @flat.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end
private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
