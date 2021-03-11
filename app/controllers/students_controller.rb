class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    #renders form
    #submits to create
  end

  def create
    #newStudent = Student.create(params[:student])
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end


end
