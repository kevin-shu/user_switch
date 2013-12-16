$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "user_switch/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "user_switch"
  s.version     = UserSwitch::VERSION
  s.authors     = ["Kevin Shu"]
  s.email       = ["kevin78515@gmail.com"]
  s.homepage    = "http://www.kevinshu.com"
  s.summary     = "Switch the login account in seconds."
  s.description = "Switch the login account in seconds. Depends on devise."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency "rails", "~> 3.0.0"

  # s.add_development_dependency "sqlite3"
end
