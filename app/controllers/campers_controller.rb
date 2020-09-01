class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def new
        @camper = Camper.new
    end

    def create
        camper_params = params.require(:camper).permit(:name, :age)
        @camper = Camper.create(camper_params)
        redirect_to campers_path
    end

    def show
        @camper = Camper.find(params[:id])
    end

end
