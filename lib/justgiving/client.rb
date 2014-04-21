require "faraday"
require "faraday_middleware"
require_relative "error"

module JustGiving
  class Client

    def initialize(token)
      @token = token
      @base_url = "https://api.justgiving.com/#{@token}/v1/"
      @connection_defaults = {
        url: @base_url,
        headers: {
          'User-Agent' => 'Ruby REST client',
          'Content-Type' => 'application/json'
        }
      }
      @connection = Faraday.new(@connection_defaults) do |connection|
        connection.response :json, :content_type => /\bjson$/
        connection.response :logger
        connection.adapter   Faraday.default_adapter
        connection.use       Error::RaiseError
      end
    end

    protected

      def get(path, query=nil)
        response = @connection.get do |request|
          request.url path
          request.params.merge! query if query
        end
        response.body
      end

  end
end