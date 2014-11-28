require 'facets/module/mattr'
require 'rack-heartbeat'

require_relative 'app/racktest'

use Rack::Heartbeat

run App::RackTest.new
