class SubjectsController < ApplicationController
  def index
  	@subjects = Subject.all
  end

  def new
  	@subject = Subject.new
  end

  def create
  	@subject = Subject.new(params[:subject])
  	if @subject.save
  		redirect_to subjects_url
  	else
  		render :action => "new"
  	end
  end

  def destroy
    @subject= Subject.find(params[:id])
    @subject.destroy
    redirect_to subjects_url
  end


end
