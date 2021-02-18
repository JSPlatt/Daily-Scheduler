class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.create(patient_params)
        if @patient.valid?
            redirect_to patient_path(@patient)
        else 
            flash[:errors]= @patient.errors.full_messages 
            redirect_to new_patient_path
        end
    end
    
    private

    def patient_params
        params.require(:patient).permit(:name, :need)
    end
end
