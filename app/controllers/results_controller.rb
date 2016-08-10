class ResultsController < ApplicationController

  def show
    @results = AggregatedResponse.where(:course_id => params[:course])
  end


  private

  def results_params
    params.require(:course).permit!
  end

end
