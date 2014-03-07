class SiteController < ApplicationController
	def home
		#render 'home' 
		#lo normal sería hacer el render pero rails ya lo hace por nosotros por defecto (ojo con los nombres del método y de l carpeta donde está la vista correspondiente)
	end

	def contact
		render 'contact'
	end
		
end
