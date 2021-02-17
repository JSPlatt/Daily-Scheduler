class Surgery < ApplicationRecord
  belongs_to :doctor
  belongs_to :nurse
  belongs_to :patient
  belongs_to :room

  validates :time, numericality: {greater_than: 0}
  validates :time, numericality: {less_than: 24}

end
