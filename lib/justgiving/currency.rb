require_relative "client"

module JustGiving
  class Currency < Client

    def get_valid_country_codes
      get("fundraising/currencies")
    end

  end
end