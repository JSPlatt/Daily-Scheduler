class Nurse < ApplicationRecord
    has_many :surgeries
    has_many :patients, through: :surgeries
    has_many :doctors, through: :surgeries
    has_many :rooms, through: :surgeries
end
