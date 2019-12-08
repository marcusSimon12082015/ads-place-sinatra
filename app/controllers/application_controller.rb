require './config/environment'

class ApplicationController < Sinatra::Base
  helpers ApplicationHelper
  register Sinatra::Flash

  APP_ROOT = Pathname.new(File.expand_path('../../../',__FILE__))

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :root, APP_ROOT.to_path
    set :session_secret, "password_secrets"
    register Sinatra::Partial
    set :partial_template_engine => :erb
  end

  get '/' do

  end
end
