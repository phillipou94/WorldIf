class User < ActiveRecord::Base
	def new #recall new action is routed to /signup
     	@user = User.new
	end
end
