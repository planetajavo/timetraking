module ApplicationHelper 
    def flash_message

           if flash[:alert]
           	content_tag :div, class: 'alert-box warning radius' do
              content_tag :p do
              	flash[:alert]
          	  end
            end
			
           elsif flash[:notice]
           	content_tag :div, data: { alert: '' }, class: 'alert-box success radius' do
          		
              content_tag :a, class: 'close' do
                flash[:notice]
            		
          		end
			end
            
           end
	end 

  def format_date (date, format)
    #:long => "Thursday, 6 March 2014"
    date.strftime('%A%d%B%y', long)


    #:sort => "20140306"
    
  end
  
end

