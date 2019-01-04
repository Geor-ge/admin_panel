class InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      redirect_to '/instructors'
    end

  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update(instructor_params)
      redirect_to '/instructors'
    end
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    if @instructor.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def instructor_params
    params.require(:instructor).permit(:f_name, :l_name,:age, :rank, :salary, :cohort_id)
  end

end
