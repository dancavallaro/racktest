$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), 'app'))

require 'facets/module/mattr'
require 'rack-heartbeat'
require 'rack/env_inspector'
require 'rack/request_id'

require 'rack_test'

app = Rack::Builder.new do
  # Install middleware
  use Rack::RequestID
  use Rack::EnvInspector
  use Rack::Heartbeat
  
  # Run application
  run App::RackTest.new
end

run app
