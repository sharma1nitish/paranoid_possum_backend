# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)

use Rack::Deflater

use Rack::CanonicalHost, ENV['REMOTE_HOST'], force_ssl: ENV['FORCE_SSL'].present?

run Rails.application
