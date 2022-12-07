module RailsWebhooks
  @@events = []

  class << self
    def add_events(model_events)
      @@events << model_events
    end

    def get_events
      @@events
    end
  end
end
