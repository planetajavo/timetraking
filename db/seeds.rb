# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do |i|

	k= i+1
	p = Project.create name: "Project #{k}", description: "Description of Project #{k}"

	rand(4..8).times do |j|
		p.entries.create hours: rand(1..3), minutes: rand(1..59), comments: "Comment of Project #{j}", date: Date.new(2014,3,i+1)
	end
end

