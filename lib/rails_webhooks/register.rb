module RailsWebhooks
  module RegisterEvents
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def register_webhooks(*events, **opts)
        return unless events.present?

        RailsWebhooks.add_events(class_name: self.to_s, events: events)
      end
    end
  end
end
