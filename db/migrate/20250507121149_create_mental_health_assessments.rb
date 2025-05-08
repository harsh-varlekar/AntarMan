class CreateMentalHealthAssessments < ActiveRecord::Migration[7.2]
  def change
    create_table :mental_health_assessments do |t|
      t.string :overwhelmed_frequency
      t.text :stress_causes, array: true, default: []
      t.text :symptoms, array: true, default: []
      t.text :coping_methods, array: true, default: []
      t.string :support_preference
      t.integer :age

      t.timestamps
    end
  end
end
