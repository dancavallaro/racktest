require 'logger'

module App
  class RackTest

    def initialize
      @logger = Logger.new(STDOUT)
    end

    def call(env)
      request = Rack::Request.new(env)
      @logger.info "RackTest serving request on #{request.path}"

      [200, {"Content-Type" => "text/html"}, ['A barebones rack app']]
    end

  end
end
