class InstructorsController < ApplicationController


  def index
    if session[:user_id] == nil
      redirect_to '/login'
    else
     @instructors = Instructor.all
     @ranks = ["Blue-Belt", "Purple-Belt", "Brown-Belt", "Black-Belt"]
     @instructor = Instructor.new
   end
  end

  def new
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @instructor = Instructor.new
    @ranks = ["Blue-Belt", "Purple-Belt", "Brown-Belt", "Black-Belt"]
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      redirect_to '/instructors'
    end

  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    if session[:user_id] == nil
      redirect_to '/login'
    end
    @instructor = Instructor.find(params[:id])
    @ranks = ["Blue-Belt", "Purple-Belt", "Brown-Belt", "Black-Belt"]
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
      redirect_to '/instructors'
    end
  end

  private

  def instructor_params
    params.require(:instructor).permit(:f_name, :l_name,:age, :rank, :salary, :cohort_id)
  end

end
