require 'pry'
class Application

    def call(env)
        @greeting = Time.now.hour < 12 ? 'Good Morning!' : 'Good Afternoon!'
        resp = Rack::Response.new
        resp.write @greeting
        resp.finish
    end
end