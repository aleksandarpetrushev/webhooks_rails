module RailsWebhooks
  class ExampleModel < ApplicationRecord
    include RailsWebhooks::RegisterEvents

    register_webhooks :create, :test
  end
end

