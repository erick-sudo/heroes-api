class HeroPowersController < ApplicationController

    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power.hero, serializer: PowerHeroSerializer, status: :created
    end

    private

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end