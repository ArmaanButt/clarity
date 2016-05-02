# encoding: UTF-8
module SurveyorControllerCustomMethods
  def self.included(base)
    # base.send :before_filter, :require_user   # AuthLogic
    # base.send :before_filter, :login_required  # Restful Authentication
    base.send :layout, 'application'
  end

  # Actions
  def new 
    session[:course] = params[:course]
    @course_id = session[:course]
    logger.debug "========================== course id: #{@course_id}"
    super
    # @title = "You can take these surveys"
  end
  def create
    @course_id = session[:course]
    logger.debug "========================== create begin; userid: #{@current_user.id}, course id: #{@course_id}"
    surveys = Survey.where(:access_code => params[:survey_code]).order("survey_version DESC")
    if params[:survey_version].blank?
      @survey = surveys.first
    else
      @survey = surveys.where(:survey_version => params[:survey_version]).first
    end
    @response_set = ResponseSet.
      create(:survey => @survey, :user_id => (@current_user.nil? ? @current_user : @current_user.id), :course_id => @course_id)
    if (@survey && @response_set)
      flash[:notice] = t('surveyor.survey_started_success')
      redirect_to(surveyor.edit_my_survey_path(
        :survey_code => @survey.access_code, :response_set_code  => @response_set.access_code))
    else
      flash[:notice] = t('surveyor.Unable_to_find_that_survey')
      redirect_to surveyor_index
    end
    logger.debug '========================== create end ===================='
  end
  def show
    logger.debug '============================ show ====================='
    super
  end
  def edit
    logger.debug '============================ edit ====================='
    super
  end
  def update
    logger.debug '============================update====================='
    super
  end

  # Paths
  def surveyor_index
    logger.debug '============================ surveyor_index ====================='
    # most of the above actions redirect to this method
    super # surveyor.available_surveys_path
  end
  def surveyor_finish
    logger.debug '============================ surveyor_finish ====================='
    # the update action redirects to this method if given params[:finish]
    super # surveyor.available_surveys_path
  end
end
class SurveyorController < ApplicationController
  include Surveyor::SurveyorControllerMethods
  include SurveyorControllerCustomMethods  
end
