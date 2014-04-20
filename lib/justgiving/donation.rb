require_relative "client"

module JustGiving
  class Donation < Client

    def get_details_by_donation_id(id)
      get("donation/#{id}")
    end

    def get_status_by_donation_id(id)
      get("donation/#{id}/status")
    end

  end
end