class Project < ActiveRecord::Base
	def self.iron_find(id_value)
		where(id: id_value).first
	end

end
