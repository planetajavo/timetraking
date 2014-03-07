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
          UserMailer.entry_created(@project).deliver
	      	redirect_to project_entries_path(@project.id)
	    	else
	      		render 'new'
	    	end

  	end

  	def edit
    	@project = Project.find params[:project_id]
    	@entry = @project.entries.find params[:id]
  end
	
	def update


  		@project = Project.find params[:project_id]
  		@entry = @project.entries.find params[:id]
  		@entry.update_attributes entry_params

	    	if @entry.save
	      		redirect_to project_entries_path(@project.id)
	    	else
	      		render 'edit'
	    	end

  	end

  	def destroy


  		@project = Project.find params[:project_id]
  		@entry = @project.entries.find params[:id]
  		@entry.destroy

	    	if @entry.destroyed?
            flash[:notice] = "Entry successfully deleted"
	      		redirect_to project_entries_path(@project.id)
	    	else
	      		
	    	end

  	end



  	private
  	
  	def entry_params
  		params.require(:entry).permit(:hours, :minutes, :date)
  	end

  	

	

end
