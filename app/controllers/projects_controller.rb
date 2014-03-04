class ProjectsController < ApplicationController
	
	def index

		@projects = Project.last_created_projects(10)
		
		if @projects.empty?

			render 'no_projects_found'
		else
			render 'index'
		end

		
		# es equivalente a esto --   @	projects = Project.limit(10).order('created_at DESC')
		# importante poner la @ para poder usar la variable en el template. Si no sería local

	end

	def show

		@project = Project.find (params[:id])

	
	rescue ActiveRecord::RecordNotFound
		
		render 'no_projects_found'
	end


end


