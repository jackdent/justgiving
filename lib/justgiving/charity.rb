require_relative "client"

module JustGiving
  class Charity < Client

    def getByCharityId(id)
      get("charity/#{id}")
    end

    def getEventsByCharityId(id)
      get("charity/#{id}/events")
    end

    def getDonationsByCharityId(id)
      get("charity/#{id}/donations")
    end

    def getCharityCategories
      get("charity/categories")
    end

  end
end