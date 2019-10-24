class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def create 
    @student = Student.new 
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save 
    redirect_to student_path(@student)
  end 

end