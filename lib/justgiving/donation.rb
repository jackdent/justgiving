require_relative "client"

module JustGiving
  class Donation < Client

    def getDetailsByDonationId(id)
      get("donation/#{id}")
    end

    def getStatusByDonationId(id)
      get("donation/#{id}/status")
    end

  end
end