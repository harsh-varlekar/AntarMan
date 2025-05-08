class MentalHealthAssessment < ApplicationRecord
  belongs_to :user

  validates :age, numericality: { only_integer: true, greater_than: 0 }
end