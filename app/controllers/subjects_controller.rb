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
end
