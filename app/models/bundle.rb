class Bundle < ActiveRecord::Base
	require 'zlib'
	require 'archive/tar/minitar'
	include Archive::Tar

	belongs_to :company 
	belongs_to :design

	validates_presence_of :uid, :environment, :company_id, :design_id

	# Unpack bundle. Not sure where to put this in the model yet, or if 'package' will be the answer
	def self.unpack
		# Minitar.unpack(self.package, 'directory')
	end

	# Scope for uid. Simple enough that this SHOULD BE DELETED LATER
	def self.uid
		pluck(:uid)
	end

	def self.firmware_release
		if self.environment == ('test' or 'Test')
			return "Test Build"
		else 
			return self.firmware_revision[-3, self.firmware_revision.length]
		end
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
