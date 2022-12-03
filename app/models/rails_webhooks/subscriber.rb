module RailsWebhooks
  class Subscriber < ApplicationRecord
    has_many :events, :class_name => 'RailsWebhooks::Event'

    validates :url, presence: true

    validate :check_uri_path

    before_save :parse_subscriptions

    def self.with_urls_for(event)
      where(
        case ActiveRecord::Base.connection.adapter_name
        when 'Mysql2'
          ["('*' MEMBER OF(subscriptions) OR ? MEMBER OF(subscriptions))", event]
        when 'PostgreSQL'
          ["subscriptions @> '[\"*\"]' OR subscriptions @> ?", [event].to_json]
        end
      )
    end

    private

    def check_uri_path
      uri = begin
              URI.parse(url)
            rescue URI::InvalidURIError
              return false
            end

      errors.add(:url, 'the URL must have a path') if uri.blank? || uri.path.blank?
    end

    def parse_subscriptions
      return if subscriptions.blank? || subscriptions.is_a?(Array)

      self.subscriptions = JSON.parse(subscriptions)
    end
  end
end
