require "dotenv-rails"

module RailsWebhooks
  class Engine < ::Rails::Engine
    isolate_namespace RailsWebhooks

    Dotenv::Railtie.load
  end
end
