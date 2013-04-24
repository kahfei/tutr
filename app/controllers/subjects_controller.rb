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

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(params[:subject])
      redirect_to @subject
    else
      render :action => 'edit'
    end
  end


end
