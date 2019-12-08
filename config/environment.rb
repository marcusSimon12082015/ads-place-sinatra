ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default,ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require "carrierwave"
require "carrierwave/orm/activerecord"

require 'sinatra/partial'
require 'sinatra/flash'
require './app/helpers/application_helper'
require './app/helpers/home_helper'
require './app/helpers/ads_helper'
require './app/controllers/application_controller'
require_all 'app'
