require "faraday"
require "faraday_middleware"
require "addressable/uri"
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
    end

    protected

      def get(path, query_hash=nil)
        @connection ||= Faraday.new(@connection_defaults) do |connection|
          connection.response :json, :content_type => /\bjson$/
          connection.response :logger
          connection.adapter   Faraday.default_adapter
          connection.use       Error::RaiseError
        end

        path += '?' + query_string_from_hash(query_hash) if query_hash
        response = @connection.get path
        response.body
      end

      def query_string_from_hash(query_hash)
        uri = Addressable::URI.new
        uri.query_values = query_hash
        uri.query
      end

  end
end