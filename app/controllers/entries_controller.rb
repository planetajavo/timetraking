class EntriesController < ApplicationController
	
	def index
		@project = Project.find params[:project_id]
		@entries = @project.entries

		render 'index', layout: 'project'
	end

	def new
    	@project = Project.find params[:project_id]		
    	@entry = @project.entries.new
  	end

  	def create


  		@project = Project.find params[:project_id]
  		@entry = @project.entries.new entry_params
	    	if @entry.save
	      		redirect_to project_entries_path(@project.id)
	    	else
	      		render 'new'
	    	end

  	end

  	private
  	
  	def entry_params
  		params.require(:entry).permit(:hours, :minutes, :date)
  	end
	

end
