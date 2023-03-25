class PowersController < ApplicationController
    def index
        render json: Power.all
    end

    def show
        render json: find_power
    end

    def update
        power = find_power
        power.update!(powerparams)
        render json: power, status: :created
    end

    private

    def find_power
        Power.find(params[:id])
    end

    def powerparams
        params.permit(:id, :description)
    end
end
