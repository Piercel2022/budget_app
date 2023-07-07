# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'middleman/rack'

run Rails.application
Rails.application.load_server
run Middleman.server
