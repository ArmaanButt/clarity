class CoursesController < ApplicationController
  def index
    ids = Course.pluck(:id).shuffle[0..99]
    @course = Course.where(id: ids)
  end

def search
  if params[:search].present?
    @course = Course.search(params[:search],fields:[:course_code ,:course_name])
  else
    # Returning Random Course
    ids = Course.pluck(:id).shuffle[0..99]
    @course = Course.where(id: ids)
  end
end

  def show
    @course = Course.find(params[:id])
    commontator_thread_show(@course)
  end

  def user_courses
    @course = current_user.courses
  end

  def autocomplete
    render json: Course.search(params[:search], autocomplete: true, limit: 10).map(&:course_code)

  end

  def enroll

    begin
      @try = current_user.courses.find(params[:id])
    rescue => ex
      @course = Course.find(params[:id])
      if current_user.courses << @course
      respond_to do |format|
         format.html {redirect_to :back}
        format.js
    end
  end
  end
end


def unenroll
  @course=Course.find(params[:id])
  if current_user.courses.delete(@course.id)
    respond_to do |format|
       format.html {redirect_to :back}
      format.js
    end
  end
end



end
