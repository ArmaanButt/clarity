class ResultsController < ApplicationController
  layout "application"
  def show
    @results = AggregatedResponse.where(:course_id => params[:course])
  end


  private

  def results_params
    params.require(:course).permit!
  end

end
