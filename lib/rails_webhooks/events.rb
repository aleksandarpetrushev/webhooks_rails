module RailsWebhooks
  @@events = []

  class << self
    def add_events(model_events)
      @@events << model_events
    end

    def get_events
      @@events
    end

    def get_events_for(model)
      @@events.find { |event| event[:class_name] == model }&.[](:events)
    end
  end
end
