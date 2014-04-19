require_relative "client"

module JustGiving
  class Currency < Client

    def getValidCountryCodes
      get("fundraising/currencies")
    end

  end
end