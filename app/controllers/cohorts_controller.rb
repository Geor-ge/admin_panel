class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to '/cohorts'
    end
  end

  def edit
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
    @cohort = Cohort.find(params[:id])
    if @cohort.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private
  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date)
  end
end
