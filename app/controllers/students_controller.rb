class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    # @student.save
  end

  def create
    @student = Student.create(params[:first_name, :last_name])
    @student.save
    redirect_to students_path(@student)
  end

end
