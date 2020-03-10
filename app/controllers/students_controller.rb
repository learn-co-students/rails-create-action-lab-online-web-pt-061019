class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new                    # creating a new student object 
    @student.first_name = params[:first_name] # creating a first_name 
    @student.last_name = params[:last_name]   # creating a last_name 
    @student.save                             # saving the current students
    redirect_to student_path(@student)        # return student
  end

end
