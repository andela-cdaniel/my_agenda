require File.expand_path("../config/setup", __FILE__)
require File.expand_path("../config/routes", __FILE__)
use Rack::Reloader

run BijouApp
