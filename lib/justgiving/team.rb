require_relative "client"

module JustGiving
  class Team < Client

    def get_team_by_name(name)
      get("team/#{name}")
    end

    # def check_if_team_exists_with_name(name)
    #   head("team/#{name}")
    # end

    # Todo:
    # CreateOrUpdateTeam
    # JoinTeam

  end
end