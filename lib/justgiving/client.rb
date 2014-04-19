require 'json'
require 'curb'
require "addressable/uri"

module JustGiving
  class Client

    def initialize(token)
      @token = token
      @base_url = "https://api.justgiving.com/#{@token}/v1"
    end

    protected

      def get(path, query_hash=nil)
        url = "#{@base_url}/#{path}"
        url += '?' + query_string_from_hash(query_hash) if query_hash
        request = Curl.get(url) do |curl| 
          curl.headers["User-Agent"] = "Ruby REST client"
          curl.headers["Content-Type"] = "application/json"
        end
        JSON.parse request.body_str
      end

      def query_string_from_hash(query_hash)
        uri = Addressable::URI.new
        uri.query_values = query_hash
        uri.query
      end

  end
end