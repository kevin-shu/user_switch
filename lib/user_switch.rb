require "user_switch/extension.rb"

module UserSwitch

  mattr_accessor :available_users

  def self.setup
    yield self
  end

  ActiveSupport.on_load(:action_controller) do
    include UserSwitch::Panel
  end

end

require 'user_switch/rails.rb' # Always at the end.