module SessionsHelper

	# Logs in the particular user
	def log_in(user)
		session[:user_id] = user.id
	end

	# Returns the current logged-in user (if any)
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	# Returns true if the user is logged in, otherwise false
	def logged_in?
		!current_user.nil?
	end

	# Logs out the current user
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

end