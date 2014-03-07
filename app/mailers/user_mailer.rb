class UserMailer < ActionMailer::Base
  default from: "javierdiazmunoz@gmail.com"

  def entry_created (project)
  	@project = project
  	mail(to: 'planetajavo@yahoo.es', subject: "New entry created in project #{project.name}")
  end


end
