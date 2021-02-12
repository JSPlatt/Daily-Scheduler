class Room < ApplicationRecord
    has_many :surgeries
    has_many :patients, through: :surgeries
    has_many :nurses, through: :surgeries
    has_many :doctors, through: :surgeries
end
