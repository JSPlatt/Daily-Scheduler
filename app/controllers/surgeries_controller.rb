class SurgeriesController < ApplicationController

    def index  
        @surgeries = Surgery.all
        @doctors = Doctor.all
        @patients = Patient.all
    end

    def show
        @surgery = Surgery.find(params[:id])
    end

    def new
        @surgery = Surgery.new
    end

    def create
        @surgery = Surgery.create(surgery_params)
        redirect_to surgery_path(@surgery.id)
    end

    def edit  
        @surgery = Surgery.find(params[:id])
        redirect_to edit_surgery_path
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
        params.require(:surgery).permit(:time, :patient_id, :doctor_id, :nurse_id)
    end
end
