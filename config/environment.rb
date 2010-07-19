# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
	config.gem "authlogic"
	config.gem "acl9", :source => "http://gemcutter.org", :lib => "acl9"

	config.gem "less"
	config.gem "calendar_date_select"

	config.gem "hpricot"

	config.gem "fastercsv"

	# config.gem "ruby-mp3info"

  config.time_zone = 'UTC'

	config.action_controller.session_store = :active_record_store
end