class SessionsController < ApplicationController
  get '/login' do
    erb :'sessions/login'
  end

  post '/sessions' do
    @user = User.find_by(email:params[:email]).try(:authenticate,params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "Logged In! Welcome!"
      redirect '/'
    else
      @message = "We can't log You in! Email or password incorrect!"
      erb :'sessions/login'
    end
  end

  get '/sessions/logout' do
    session.clear
    flash[:notice] = "Bye!"
    redirect '/'
  end  
end
