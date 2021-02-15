class Surgery < ApplicationRecord
  belongs_to :doctor
  belongs_to :nurse
  belongs_to :patient
  belongs_to :room


def doctor
  @doctor = Doctor.find(params[:id])
end
  


end
