class VeryDummyModel < ApplicationRecord
  include RailsWebhooks::RegisterEvents

  register_webhooks :create, :update, :destroy
end
