class Company < ActiveRecord::Base

	has_many :bundles

	# Return the number of bundles a company has
	def self.number_of_bundles
		self.count(:bundle_id)
	end

end
