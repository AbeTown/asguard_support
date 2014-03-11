class Design < ActiveRecord::Base

	has_many :bundles

	validates_presence_of :design_role, :design_type, :design_subtype
	# The connection type as determined by the string given for design_subtype
	def self.connection_type
		if self.design_subtype == ('v' or 'V')
			"virtual"
		elsif self.design_subtype == ('g' or 'G')
			"cellular"
		elsif self.design_subtype == ('w' or 'W')
			"wi-fi"
		else
			"wired"
		end
	end

	# Just a more compressed version of the identification strings. 
	def design_identifier
		'#{design_role}' + '-' + '#{design_type}' + '#{design_subtype}'
	end

end
