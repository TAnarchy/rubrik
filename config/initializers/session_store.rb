# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rubrik_session',
  :secret      => 'a2ccf5f089e4b637f8b3ad0d104b2292432fb743ac1446572526b1c719df527de8c92d624e7337132ec7217430840df3bef964850570fe3cf1551082a98a4a4e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
