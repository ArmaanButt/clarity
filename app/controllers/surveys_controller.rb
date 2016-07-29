class SurveysController < ApplicationController

  def index
    @course = Course.find_by_id(params[:course])
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.fetch(:survey, {})
    end
end
