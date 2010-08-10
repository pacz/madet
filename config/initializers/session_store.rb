# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_madet_git_session',
  :secret      => '2edf7abca9e34f72d05eb111297c2bdf29f60ab5895e9720e9921fd5868fe133a885cfc98568e7cf5f753b55538a1086e9f2f138a3e97b1d0625b9b3587884c1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
