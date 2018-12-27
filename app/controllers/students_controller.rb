class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to '/students'
    end

  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to '/students'
    end
  end

  def delete
  end

  private

  def student_params
    params.require(:student).permit(:f_name, :l_name, :age, :rank, :cohort_id)
  end

end
