class CohortsController < ApplicationController


  def index
    if session[:user_id] == nil
      redirect_to '/login'
    else
     @cohorts = Cohort.all
     @cohort = Cohort.new
  end
  end


  def new
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to '/cohorts'
    end
  end


  def show
    @cohort = Cohort.find(params[:id])
  end


  def edit
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update(cohort_params)
      redirect_to '/cohorts'
    else
      render 'edit'
    end
  end

  def destroy
    cohort = Cohort.find(params[:id])
    instructor = cohort.instructor
    if cohort.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private
  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id)
  end
end
