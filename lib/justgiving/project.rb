require_relative "client"

module JustGiving
  class Project < Client

    def get_global_project_by_id(id)
      get("project/global/#{id}")
    end

  end
end