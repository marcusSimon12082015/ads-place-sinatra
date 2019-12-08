class RegistrationController < ApplicationController
  get '/signup' do
    erb :'registrations/signup'
  end

  post '/registrations' do
    @user = User.create(email:params[:email],password:params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect '/'
    else
      erb :'registrations/signup'
    end
  end
end 
