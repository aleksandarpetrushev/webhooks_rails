module RailsWebhooks
  class Event < ApplicationRecord
    validates :name, :subscriber, presence: true

    belongs_to :subscriber, :class_name => 'RailsWebhooks::Subscriber', optional: false
  end
end
