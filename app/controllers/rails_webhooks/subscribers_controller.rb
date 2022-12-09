module RailsWebhooks
  class SubscribersController < ApplicationController
    def index
      @subscribers = RailsWebhooks::Subscriber.all
    end

    def show; end
  end
end
