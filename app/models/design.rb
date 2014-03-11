class Design < ActiveRecord::Base

	has_many :bundles

	def design_identifier
		'#{design_role}' + '-' + '#{design_type}' + '#{design_subtype}'
	end

end
