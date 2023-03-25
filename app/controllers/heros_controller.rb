class HerosController < ApplicationController
    def index
        render json: Hero.all
    end

    def show
        render json: find_hero, serializer: PowerHeroSerializer
    end

    private

    def find_hero
        Hero.find(params[:id])
    end
end
