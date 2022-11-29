module RailsWebhooks
  module RegisterEvents
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def register_webhooks(events, **opts)
        events ||= %i[create update destroy]
        @@registered_webhooks_events = events
      end

      def registered_events
        @@registered_webhooks_events
      end
    end
  end
end
