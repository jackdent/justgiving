require "faraday"
require "faraday_middleware"
require_relative "error"
require_relative "logger"

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
        connection.request  :json

        connection.response :json, :content_type => /\bjson$/

        connection.use      Error::RaiseError
        connection.use      Logger
        connection.adapter  Faraday.default_adapter
      end
    end

    protected

      def get(path, query=nil)
        response = @connection.get do |request|
          request.url path
          request.params.merge! query unless query.nil?
        end
        response.body
      end

      def post(path, payload=nil)
        response = @connection.post do |request|
          request.url path
          request.body = payload unless payload.nil?
        end
        response.body
      end

      def put(path, payload=nil)
        response = @connection.put do |request|
          request.url path
          request.body = payload unless payload.nil?
        end
        response.body
      end

      def head(path)
        response = @connection.head do |request|
          request.url path
        end
        true # We expect Error::NoResults to be thrown if the query is unsuccessful
      end

  end
end