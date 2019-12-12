class UsersController < ApplicationController
  get '/user/:id' do
    if (!current_user.nil? && current_user.id == params[:id].to_i)
      erb :'user/index.html'
    else
      flash[:error] = "You are not allowed to access this profile!"
      redirect to("/")
    end
  end 
end
