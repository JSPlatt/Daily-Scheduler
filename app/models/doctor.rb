class Doctor < ApplicationRecord
    has_many :surgeries
    has_many :patients, through: :surgeries
    has_many :nurses, through: :surgeries
    has_many :rooms, through: :surgeries

    

end
