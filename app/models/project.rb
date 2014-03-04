class Project < ActiveRecord::Base

	has_many :entries
	
	def self.iron_find(id_value)
		where(id: id_value).first
	end

	def self.last_created_projects(n)
		limit(n).order(created_at: :desc)
	end

end
