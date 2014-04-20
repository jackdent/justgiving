require_relative "client"

module JustGiving
  class Charity < Client

    def get_by_charity_id(id)
      get("charity/#{id}")
    end

    def get_events_by_charity_id(id)
      get("charity/#{id}/events")
    end

    def get_donations_by_charity_id(id)
      get("charity/#{id}/donations")
    end

    def get_charity_categories
      get("charity/categories")
    end

  end
end