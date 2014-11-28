require 'facets/module/mattr'
require 'rack-heartbeat'

app = Proc.new do |env|
  [
	'200',
	{'Content-Type' => 'text/html'},
	['A barebones rack app']
  ]
end

use Rack::Heartbeat
run app
