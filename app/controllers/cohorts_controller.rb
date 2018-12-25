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
  end

  def delete
  end

  private
  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date)
  end
end
