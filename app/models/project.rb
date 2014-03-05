class Project < ActiveRecord::Base

	has_many :entries

	validates :name, uniqueness: true
	validates :name, presence: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /[a-zA-Z0-0]/}

	def self.iron_find(id_value)
		where(id: id_value).first
	end

	def self.last_created_projects(n)
		limit(n).order(created_at: :desc)
	end

	def total_hours_in_month(month, year)

		from = Date.new(year, month, 1)
		to = from.end_of_month
		total = 0
		entries.where(date: from..to).each do |entry|

			total += entry.hours * 60 + entry.minutes

		end 

		(total.to_f/60).round(1)
		
	end


end
