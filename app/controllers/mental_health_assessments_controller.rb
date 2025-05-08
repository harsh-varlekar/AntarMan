class MentalHealthAssessmentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @mental_health_assessment = current_user.mental_health_assessment || 
    current_user.build_mental_health_assessment
  end

  def create
    @mental_health_assessment = current_user.build_mental_health_assessment(assessment_params)
    
    if @mental_health_assessment.save
      redirect_to root_path, notice: "Assessment saved successfully!"
    else
      render :new
    end
  end

  private

  def assessment_params
    params.require(:mental_health_assessment).permit(:overwhelmed_frequency, :support_preference, :age, support_types: [], stress_causes: [], symptoms: [], coping_methods: [])
  end
end