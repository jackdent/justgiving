module JustGiving
  module Error

    class BadRequest < StandardError; end
    class NoResults < StandardError; end
    class InternalServerError < StandardError; end

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