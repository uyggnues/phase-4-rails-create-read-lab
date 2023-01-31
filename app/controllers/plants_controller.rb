class PlantsController < ApplicationController
  wrap_parameters format: []
  def index
    plants = Plant.all
    render json: plants
  end
  
  def show
    # debugger
    plant = Plant.find(params[:id])
    render json: plant
  end
  
  def create
    plants = Plant.create(plant_params)
    # debugger
    render json: plants, status: :created
  end
    
  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end