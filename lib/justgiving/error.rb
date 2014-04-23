module JustGiving
  module Error

    class ConfigurationError < StandardError; end
    class InvalidEnvironment < ConfigurationError; end

    class RequestError < StandardError; end
    class BadRequest < RequestError; end
    class NoResults < RequestError; end
    class InternalServerError < RequestError; end

    class RaiseError < Faraday::Response::Middleware
   
      def on_complete(env)
        status = env[:status]
        if status >= 400
          case status 
          when 400
            raise Error::BadRequest
          when 404
            raise Error::NoResults
          else
            raise Error::InternalServerError # Treat any other errors as 500
          end
        end
      end
   
    end

  end
end