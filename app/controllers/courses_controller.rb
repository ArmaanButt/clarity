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
end
