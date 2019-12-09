require './config/environment'

class ApplicationController < Sinatra::Base
  helpers ApplicationHelper, HomeHelper, AdsHelper
  register Sinatra::Flash

  #always set categories before every action except signup and login
  before do
    if request.request_method == "GET" && !request.path.match(/^(\/{1}|(\/\bcategory\b\/\d+))$/).nil?
        @categories = Category.all
    end
  end
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
    erb :index, :layout => :"home_category_layout"
  end
end
