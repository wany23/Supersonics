# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_server_session',
  :secret      => '89372d10686c7a11063d5bff9b2274de25be93e7e662dbcf8c0bba034fe547e59f9a3b0d7e7d14dffc9c0b6ef0c720936026791daa1a463fb6e1b98310f661e5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
