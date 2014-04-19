require_relative "client"

module JustGiving
  class Country < Client

    def getCountries
      get("countries")
    end

  end
end