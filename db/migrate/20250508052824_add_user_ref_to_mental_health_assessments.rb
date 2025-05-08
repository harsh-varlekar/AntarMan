class AddUserRefToMentalHealthAssessments < ActiveRecord::Migration[7.2]
  def change
    add_reference :mental_health_assessments, :user, null: false, foreign_key: true
  end
end
