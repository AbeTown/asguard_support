class Bundle < ActiveRecord::Base

	belongs_to :company, :design

	# Scope for uid. Simple enough that this SHOULD BE DELETED LATER
	def self.uid
		pluck(:uid)
	end

	def self.firmware_release
		if self.environment == ('test' or 'Test'){
			return "Test Build"
		}
		else return self.firmware_revision[-3, self.firmware_revision.length]
	end

	# Method to return the firmware_revision and environment
	def firmware_and_environment
		'#{firmware_revision}' + '--' + '#{environment}'
	end

	# Self Explanatory...
	def time_since_bundled
		time_elapsed = Time.now - bundled_at
	end
end
