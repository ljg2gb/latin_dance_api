class LatindancesController < ApplicationController
    def index
        @latindances = Latindance.all
        render json: @latindances
    end

    def show
        @latindance = Latindance.find(params[:id])
        render json: @latindance
    end

    def create
        @latindance = Latindance.create(
            style: params[:style],
            reputation: params[:reputation]
        )
        render json: @latindance
    end

    def update
        @latindance = Latindance.find(params[:id])
        @latindance.update(
            style: params[:style],
            reputation: params[:reputation]
        )
        render json: @latindance
    end

    def destroy
        @latindance = Latindance.find(params[:id])
        @latindance.destroy
        render json: {message:"Dance successfully deleted"}
    end

end
