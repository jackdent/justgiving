require_relative "client"

module JustGiving
  class Country < Client

    def get_countries
      get("countries")
    end

  end
end