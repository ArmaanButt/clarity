class SurveysController < ApplicationController
    def index
        @course = Course.find_by_id(params[:course])
    end
    # this action will be called when the rout url "surveys/save" is hit and is passed the json variable
    def create
        if validate_user_for_course
            Response.find_or_initialize_by(:user_id => current_user.id, :course_id => params[:course]).update_attributes!(:response => response_params)
        end
    end

    def show
      @course = Course.find_by_id(params[:course])
    end

    private

    # if we want to use a separate js to surveys.coffee to post, the url should be surveys/save_response as
    # defined below causing the "response_save()" function from the save_response.js.erb to act
    def save_response
        respond_to do |format|
            format.js { render js: 'response_save();' }
        end
    end

    def check_if_user_already_responded

    end
    # function to return true if this user exists and enrolled in this course
    def validate_user_for_course
        current_user && current_user.courses.exists?(params[:course])
    end

    def response_params
        params.require(:response).permit!
    end
end
