class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

def search
  if params[:search].present?
    @course = Course.search(params[:search],feilds:[{course_code: :exact},:course_prof,:description])
  else
    @course = Course.all
  end
end

  def show
    @course = Course.find(params[:id])
  end

  def user_courses
    @course = current_user.courses
  end

  def enroll

    begin
      @try = current_user.courses.find(params[:id])
    rescue => ex
      @course = Course.find(params[:id])
      current_user.courses << @course
      logger.error ex.message
    end
  end
end
