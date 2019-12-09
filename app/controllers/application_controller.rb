require './config/environment'

class ApplicationController < Sinatra::Base
  helpers ApplicationHelper, HomeHelper, AdsHelper
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


  not_found do
    erb :'error'
  end

  get '/' do
    if current_user
      @ads = Ad.where('user_id != ?',current_user)
    else
      @ads = Ad.all
    end
    erb :index
  end
end
