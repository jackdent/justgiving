require "faraday"

module JustGiving
  class Logger < Faraday::Middleware

    def call(env)
      puts "Request: #{env[:method].to_s.upcase} #{env[:url]}"
      puts "Request body: #{env[:body]}" unless env[:body].nil?

      @app.call(env).on_complete do
        puts "Response: #{env[:status]} #{env[:body]}" unless env[:status] == 200
      end
    end

  end
end