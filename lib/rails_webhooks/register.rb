module RailsWebhooks
  module RegisterEvents
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def register_webhooks(*events, **opts)
        return unless events.present?

        class_name = opts[:class_name] || self.to_s.demodulize.underscore
        RailsWebhooks.add_events(class_name: class_name, events: events)
      end
    end
  end
end
