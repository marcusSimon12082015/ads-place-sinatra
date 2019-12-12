require './config/environment'

require 'sass/plugin/rack'

set :root, File.dirname(__FILE__)

CarrierWave.configure do |config|
  config.root = ApplicationController.root + "/public"
end

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

use Rack::MethodOverride
use RegistrationController
use SessionsController
use CategoryController
use UsersController
use MessageController
use AdsController
run ApplicationController
