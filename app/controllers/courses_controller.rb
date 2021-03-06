class CoursesController < ApplicationController


  def index
    if session[:user_id] == nil
      redirect_to '/login'
    else
      @courses = Course.all
      @course = Course.new
    end
  end

  def new
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @course = Course.new
  end

  def create
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @course = Course.new(course_params)
    if @course.save
      redirect_to '/courses'
    end
  end

  def show
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @course = Course.find(params[:id])
  end

  def edit
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @course = Course.find(params[:id])
  end

  def update
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @course = Course.find(params[:id])
    if @course.update_attributes(course_params)
      redirect_to '/courses'
    end
  end

  def destroy
    if session[:user_id] == nil
      redirect_to '/login'
    end
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
