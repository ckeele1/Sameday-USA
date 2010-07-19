# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Sameday-USA_session',
  :secret      => 'c1a90d46891d78d2a4fff841e85d797bdaf92a5f81383f72a16a60ac211ceea547e8c7cc5f11b52f9a5fbd571f3027d168cae7697ff6652ea4bf8820bf00fb78'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
