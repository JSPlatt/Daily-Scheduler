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
        if @surgery.valid?
            redirect_to surgery_path(@surgery)
        else 
            flash[:errors]= @surgery.errors.full_messages 
            redirect_to new_surgery_path
        end
    end
    

    def edit  
        @surgery = Surgery.find(params[:id])
    end

    def update
        @surgery = Surgery.find(params[:id])
        @surgery.update(surgery_params)
        redirect_to surgery_path(@surgery)
    end

    def destroy
        @surgery = Surgery.find(params[:id])
        @surgery.destroy
        redirect_to surgeries_path
    end

private

    def surgery_params
        params.require(:surgery).permit(:time,:patient_id,:doctor_id,:nurse_id,:room_id)
    end
end
