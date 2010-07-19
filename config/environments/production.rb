# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

config.log_level = :debug

GOOGLE_MAPS_API_KEY = 'ABQIAAAAuCOJ8dM9YKFXzmZlW-q2zhSLSyb6F8_c8ScLoQ4fJOC6EmPl9xQ7_4h8989JP4T1qt-qy9AX3Pf-9A'