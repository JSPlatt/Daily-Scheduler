class Surgery < ApplicationRecord
  belongs_to :doctor
  belongs_to :nurse
  belongs_to :patient
  belongs_to :room

  validates :time, numericality: {greater_than_or_equal_to: 1}
  validates :time, numericality: {less_than_or_equal_to: 23}

end
