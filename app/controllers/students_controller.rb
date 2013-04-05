class StudentsController < ApplicationController
  def index
  	@students = Student.all
  end

  def new 
  	@student = Student.new

  end

  def create
  	@student = Student.new(params[:student])
  	if @student.save
  		redirect_to @student
  	else
  		render :action => "new"
  	end
  end

  def show
  	@student = Student.find(params[:id])
  end
end
