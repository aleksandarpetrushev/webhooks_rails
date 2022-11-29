Rails.application.routes.draw do
  mount RailsWebhooks::Engine => "/rails_webhooks"
end
