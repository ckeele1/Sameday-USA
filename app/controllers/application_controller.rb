# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	helper :all # include all helpers, all the time
	protect_from_forgery # See ActionController::RequestForgeryProtection for details

	filter_parameter_logging :password
	helper_method :current_user_session, :current_user, :application_version

	rescue_from 'Acl9::AccessDenied', :with => :access_denied

	before_filter :is_a_valid_token_set?
	before_filter :track_user

	# Test Custom Error Pages in development environment
	# alias_method :rescue_action_locally, :rescue_action_in_public

	protected
		def render_optional_error_file(status_code)
			activate_authlogic
			case status_code.to_s
				when 'not_found'
					error_number = 404
				else
					error_number = 500
			end
			render :template => "errors/#{error_number}", :status => error_number, :layout => 'application'
		end

	private
		def current_user_session
			return @current_user_session if defined?(@current_user_session)
			@current_user_session = UserSession.find
		end

		def current_user
			return @current_user if defined?(@current_user)
			@current_user = current_user_session && current_user_session.user
		end

		def require_no_user
			if current_user
				store_location
				flash[:notice] = "You must be logged out to access this page"
				redirect_to 'http://samedayusa.travel/'
				return false
			end
		end

		def store_location
			session[:return_to] = request.request_uri
		end

		def redirect_back_or_default(default)
			redirect_to(session[:return_to] || default)
			session[:return_to] = nil
		end

		def access_denied
			if current_user
				redirect_to '/deny'
			else
				flash[:notice] = 'Access denied. Try to log in first.'
				redirect_to '/login'
			end
		end

		def is_a_valid_token_set?
			if !params[:api_token].blank? && user = User.find_by_single_access_token(params[:api_token])
				@current_user_session = UserSession.create(user, false)
			elsif session[:cas_user]
				# This will continue through to CAS Authentication.
			else
				false
			end
		end
		
		def track_user
			begin
			user_id = current_user.id || 0
			model_id = request.parameters["id"] || nil
	
			UserActivity.create!(
			  :user_id => user_id,
			  :controller_action => request.parameters["action"],
			  :model_name => request.parameters["controller"].singularize.capitalize,
			  :model_id => model_id
			)
			rescue
			end
		end

		def application_version
			cmd1 = "/usr/local/bin/git describe HEAD"
			cmd2 = "/usr/local/bin/git rev-parse HEAD | /bin/awk '{print substr($1,0,8)}'"
			application_version = `#{cmd1}`
			build_number = `#{cmd2}`

			application_version.gsub!(/\s/, '')
			build_number.gsub!(/\s/, '')

			return "#{application_version} Build: #{build_number}"
		end
end
