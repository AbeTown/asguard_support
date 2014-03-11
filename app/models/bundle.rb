class Bundle < ActiveRecord::Base

	# Method to return the firmware_revision and environment
	def firmware_and_environment
		'#{firmware_revision}' + '--' + '#{environment}'
	end

	# Self Explanatory...
	def time_since_bundled
		time_elapsed = Time.now - bundled_at
	end
end
