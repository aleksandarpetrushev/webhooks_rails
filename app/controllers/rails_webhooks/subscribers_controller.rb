module RailsWebhooks
  class SubscribersController < ApplicationController
    def index
      @subscribers = RailsWebhooks::Subscriber.all
    end

    def show; end

    def new; end

    def edit; end

    def update; end

    def destroy; end
  end
end
