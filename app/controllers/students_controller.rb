class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      redirect_to '/students'
    else
      render 'new'
    end

  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to '/students'
    else
      render 'edit'
  end
end

  def destroy
    @student = Student.find(params[:id])
    if @student.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def student_params
    params.require(:student).permit(:f_name, :l_name, :age, :rank, :cohort_id)
  end

end
