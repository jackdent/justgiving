require_relative "client"

module JustGiving
  class Fundraising < Client

    def check_if_page_exists_by_name(name)
      head("fundraising/pages/#{name}")
    end

    def suggest_page_short_names(preferred)
      get("fundraising/pages/suggest", {'preferredName' => preferred})
    end

    # Todo:
    # RegisterFundraisingPage
    # GetFundraisingPageDetails
    # GetFundraisingPages
    # GetFundraisingPageDonations
    # UpdateFundraisingPage
    # PageUpdates
    # PageUpdateById
    # PageUpdatesAddPost
    # DeleteFundraisingPageAttribution
    # UpdateFundraisingPageAttribution
    # AppendToFundraisingPageAttribution
    # GetFundraisingPageAttribution
    # UploadImage
    # AddImageToFundraisingPage
    # GetImagesForFundraisingPage
    # AddVideoToFundraisingPage
    # GetVideosForFundraisingPage

  end
end