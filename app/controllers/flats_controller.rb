class FlatsController < ApplicationController

  before_action :set_flat, only: %i[show edit update destroy]
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

    def show

    end

    def create
      @flat = Flat.new(flats_params)

      if @flat.save
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
      end
    end


  def edit

  end

  def update
    if @flat.update(flats_params)
      redirect_to flat_path(@flat)
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    @flat.destroy
    redirect_to root_path, status: :see_other
  end

private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url)
  end
end
