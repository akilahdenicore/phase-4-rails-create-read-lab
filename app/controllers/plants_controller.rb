class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
    end

    def show 
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        Plant.create(params: plant)
    end
end
