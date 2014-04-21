require_relative "client"

module JustGiving
  class Charity < Client

    def get_by_charity_id(id)
      get("charity/#{id}")
    end

    # def authenticate_charity_account(account_details = {})
    #   post("charity/authenticate", account_details)
    # end

    def get_events_by_charity_id(id)
      get("charity/#{id}/events")
    end

    def get_donations_by_charity_id(id)
      get("charity/#{id}/donations")
    end

    # Todo
    # CharityDeleteFundraisingPageAttribution
    # CharityUpdateFundraisingPageAttribution
    # CharityAppendToFundraisingPageAttribution
    # CharityGetFundraisingPageAttribution

    def get_charity_categories
      get("charity/categories")
    end

  end
end