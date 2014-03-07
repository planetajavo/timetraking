module EntriesHelper

	def entries_form_submit_text
		
		if @entry.new_record?
			'Create'
		else
			'Update'
		end
	end

end
