# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_videoDatabaseApp_session',
  :secret      => '94aed092f10c6b73627d201f8ea4e32f08f8dedc98e32f79a3dd7393d0fa93ed7323a31114a8992d93215ba241cc0f8fc58f1dfadd7d67e4959a0b7f97c613c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
