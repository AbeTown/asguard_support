class WelcomeController < ApplicationController

	def hello
		@uids = Bundle.uid

		flash[:alert] = "This string created with 'flash[:alert]' on welcome#hello"
		
	end

end
