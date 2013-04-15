# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_c_session',
  :secret      => '90cf7f409149561ee482aa223c34333a8a5a8c69a04ca6520eb0b73468771ac8eb601ba2f5d881c41a6951cfe1db5785c622b50e1d0cf370b6f5f41fe8a52a59'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
