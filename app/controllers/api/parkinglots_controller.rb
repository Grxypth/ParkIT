class Api::ParkinglotsController < ApplicationController
  before_action :set_parkinglot, only: %i[ show update destroy ]

  # GET /parkinglots
  def index
    @parkinglots = Parkinglot.all

    render json: @parkinglots
  end

  # GET /parkinglots/1
  def show
    render json: @parkinglot
  end

  # POST /parkinglots
  def create
    @parkinglot = Parkinglot.new(parkinglot_params)

    if @parkinglot.save
      render json: @parkinglot, status: :created, location: api_parkinglot_url(@parkinglot)
    else
      render json: @parkinglot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parkinglots/1
  def update
    if @parkinglot.update(parkinglot_params)
      render json: @parkinglot
    else
      render json: @parkinglot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parkinglots/1
  def destroy
    @parkinglot.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkinglot
      @parkinglot = Parkinglot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parkinglot_params
      params.require(:parkinglot).permit(:company_name, :address)
    end
end
