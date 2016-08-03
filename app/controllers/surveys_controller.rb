class SurveysController < ApplicationController



  def show
    @course = Course.find_by_id(params[:course])
    logger.debug "current course #{@course.id}"
    logger.debug"entered show"
      logger.debug "current course #{:course}"
        logger.debug "current course #{params[:course]}"
  end
# this action will be called when the rout url "surveys/save" is hit and is passed the json variable
def create
  logger.debug "current course #{@course.id}"
  logger.debug"entered create"
  logger.debug "current course #{:course}"
  logger.debug "current course #{params[:course]}"

      logger.debug "successfuly validated user for this course now going to create new instance"
      @submission = Submission.new(submission_params)
      if @submission.save
        logger.debug "submission was saved now attempting to redirect"
        redirect_to '/surveys/saved'
      else
        redirect_to '/surveys/nosaved'

    end
end



def saved

end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # if we want to use a separate js to surveys.coffee to post, the url should be surveys/save_response as
    # defined below causing the "response_save()" function from the save_response.js.erb to act
    def save_response
      respond_to do |format|
        format.js { render :js => "response_save();" }
        end
      end

# function to return true if this user exists and enrolled in this course
    def validate_user_for_course
      logger.debug "in validate_user_for_course"
       logger.debug "current course #{@course.id}"
      logger.debug "after course id check"
      logger.debug "entered validate user"
    if current_user and current_user.courses.exists?(@course.id)
      logger.debug "current user exists and user has this course"
      return true
    end
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.fetch(:survey, {})
    end

    def submission_params
        @course = Course.find_by_id(params[:course])
      logger.debug"entered submnission_params"
        logger.debug "current course #{:course}"
          logger.debug "current course #{@course}"

          logger.debug "current user is #{current_user.id} and course is #{@course.id}"
      params.permit(:question1,:question2,:question3,:question4,:question5,
                    :question6,:question7,:question8,:question9,:question10,
                    :question11,:question12,:question13,:question14,:question15,
                    :question16,:question17,:question18,:question19,:question20,
                    :question21,:question22,:question23,:question24,:question25,
                    :question26,:question27,:question28,:question29,:question30,
                    :question31, :question32, :question33, :question34, :question34,
                    :question35, :question36, :question37, :user_id => current_user.id, :course_id => @course.id)

    end


end
