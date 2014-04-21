require_relative "client"

module JustGiving
  class Event < Client

    def get_by_event_id(id)
      get("event/#{id}")
    end

    def get_pages_by_event_id(id, filters = {})
      get("event/#{id}/pages")
    end

    # def register_event(payload = {})
    #   post("event", payload)
    # end

  end
end