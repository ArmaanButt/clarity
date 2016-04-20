class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

def search
  if params[:search].present?
    @course = Course.search(params[:search],fields:[:course_code ,:course_prof,:description])
  else
    @course = Course.all
  end
end

  def show
    @course = Course.find(params[:id])
    commontator_thread_show(@course)
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
