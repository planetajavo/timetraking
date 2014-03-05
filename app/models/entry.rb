class Entry < ActiveRecord::Base
	belongs_to :project

	validates :hours,{numericality: true,

					   presence: {message: 'rellena las horas XXDDDD!!'}}
	validates :minutes, numericality: true,
						 presence: true

	validates :project, presence: true

	

end
