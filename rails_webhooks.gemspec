require_relative "lib/rails_webhooks/version"

Gem::Specification.new do |spec|
  spec.name        = "rails_webhooks"
  spec.version     = RailsWebhooks::VERSION
  spec.authors     = [""]
  spec.email       = ["aleksandarpetrushev27@gmail.com"]
  spec.homepage    = "https://github.com/aleksandarpetrushev/webhooks_rails"
  spec.summary     = "Rails engine for Webhooks feature"
  spec.description = "Rails engine for Webhooks feature"
  spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://github.com/aleksandarpetrushev/webhooks_rails"
  spec.metadata["source_code_uri"] = "https://github.com/aleksandarpetrushev/webhooks_rails"
  spec.metadata["changelog_uri"] = "https://github.com/aleksandarpetrushev/webhooks_rails"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.3.1"
end
