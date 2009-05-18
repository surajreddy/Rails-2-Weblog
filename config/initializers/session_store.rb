# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_weblog_session',
  :secret      => '3a7ef1e11db366c3be9c9490977843ce08498b9b09b97672bc3595a6d454268e645870140bfbbe1be5fe7bf59032066826198fc7ced5f21d2aaac3e6a3f71aa8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
