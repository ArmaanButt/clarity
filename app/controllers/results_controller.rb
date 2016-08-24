class ResultsController < ApplicationController
  layout "application"
  def show
    # @questions = Question.all
    @results = AggregatedResponse.where(course_id: params[:course])
    # cleaned = Hash.new
    @course = Course.find_by(id: params[:course])
  end


  private

  def results_params
    params.require(:course).permit!
  end

end
