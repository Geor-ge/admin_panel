class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to '/courses'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to '/courses'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private
  def course_params
    params.require(:course).permit(:name, :total_hours)
  end

end
