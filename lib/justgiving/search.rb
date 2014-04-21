require_relative "client"

module JustGiving
  class Search < Client

    def search_charities(filters = {})
      get("charity/search", filters)
    end

    def search_commemorations(filters = {})
      get("remember/search", filters)
    end

    def search_events(filters = {})
      get("event/search", filters)
    end

    def search_fundraisers(filters = {})
      get("fundraising/search", filters)
    end

    def search_projects(filters = {})
      get("project", filters)
    end

    def search_teams(filters = {})
      get("team/search", filters)
    end

  end
end