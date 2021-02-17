class Patient < ApplicationRecord
    has_many :surgeries
    has_many :doctors, through: :surgeries
    has_many :nurses, through: :surgeries
    has_many :rooms, through: :surgeries

end
