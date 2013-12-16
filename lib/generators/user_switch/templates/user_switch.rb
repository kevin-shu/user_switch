UserSwitch.setup do |config|

  # available_users is a hash,
  # key is the model name of user (:user, :admin, or any name you use),
  # value is a block that return the users that can be switched.
  config.available_users = { :user => lambda { User.all } }

end