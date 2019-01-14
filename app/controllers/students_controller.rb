class StudentsController < ApplicationController

  def index
    if session[:user_id] == nil
      redirect_to '/login'
    else
     @students = Student.all
     @ranks = ["Blue-Belt", "Purple-Belt", "Brown-Belt", "Black-Belt"]
     @student = Student.new
   end
  end

  def new
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @student = Student.new
    @ranks = ["Blue-Belt", "Purple-Belt", "Brown-Belt", "Black-Belt"]
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student added to roster."
      redirect_to '/students'
    else
      render 'new'
    end

  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @ranks = ["Blue-Belt", "Purple-Belt", "Brown-Belt", "Black-Belt"]
    @student = Student.find(params[:id])
  end


  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to @student
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
      redirect_to '/students'
    end
  end

  private


  def student_params
    params.require(:student).permit(:f_name, :l_name, :age, :rank, :cohort_id)
  end

end
