class SurgeriesController < ApplicationController

    def index
        @surgeries = Surgery.all
    end

    def show
        @surgery = Surgery.find(params[:id])
    end

    def new
        @surgery = Surgery.new
    end

    def create
        @surgery = Surgery.create(surgery_params)
        redirect_to surgery_path(@surgery)
    end

    def update
        @surgery = Surgery.find(params[:id])
        @surgery.update(surgery_params)
        redirect_to surgeries_path
    end

    def destroy
        @surgery = Surgery.find(params[:id])
        @surgery.destroy
        redirect_to surgeries_path
    end

private

    def surgery_params
        params.require(:surgery).permit(:time)
    end
end
