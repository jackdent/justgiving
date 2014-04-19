require_relative "client"

module JustGiving
  class Search < Client

    def searchCharities(filters = {})
      get("charity/search", filters)
    end

    def searchEvents(filters = {})
      get("event/search", filters)
    end

    def searchFundraisers(filters = {})
      get("fundraising/search", filters)
    end

    def searchCommemorations(filters = {})
      get("remember/search", filters)
    end

    def searchTeams(filters = {})
      get("team/search", filters)
    end

  end
end