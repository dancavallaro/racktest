$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), 'app'))

require 'facets/module/mattr'
require 'rack-heartbeat'

require 'rack_test'

use Rack::Heartbeat

run App::RackTest.new
