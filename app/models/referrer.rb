class Referrer < ActiveRecord::Base

	def self.search(search)
		if search
			where('lower(email) = ?', "#{search}".downcase)
		else
			where('email = ?', "none")
		end
	end
end
