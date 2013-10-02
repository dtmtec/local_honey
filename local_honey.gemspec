$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "local_honey/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "local_honey"
  s.version     = LocalHoney::VERSION
  s.authors     = ["Luis Vasconcellos", "Vicente Mundim"]
  s.email       = ["vicente.mundim@dtmtec.com.br", "luis.vasconcellos@dtmtec.com.br"]
  s.homepage    = "http://dtmtec.com.br"
  s.summary     = "LocalHoney helps you to use multiple languages in your application."
  s.description = "LocalHoney helps you to use multiple languages in your application."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
