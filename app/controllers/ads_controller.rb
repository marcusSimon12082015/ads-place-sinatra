class AdsController < ApplicationController
  #new
  get '/ad/new' do
    if logged_in?
      @categories = Category.all
      @conditions = Condition.all
      @action = "new"
      erb :'ads/new.html'
    else
      flash[:error] = "You are not allowed to perform this action!Login or Sign Up"
      redirect to("/")
    end
  end

  #edit
  get '/ad/:id/edit' do
    @ad = Ad.find_by(id:params[:id])
    if @ad.nil?
      flash[:error] = "Ad Not Found!"
      redirect "/"
    else
      if adOwner?(@ad.user)
        @categories = Category.all
        @conditions = Condition.all
        erb :'ads/edit.html'
      else
        flash[:error] = "You are not allowed to perform this action!"
        redirect to("/")
      end
    end
  end
  #show
  get '/ad/:id' do
    @ad = Ad.find_by(id:params[:id])
    if @ad.nil?
      flash[:error] = "Record Not Found!"
      redirect to("/")
    end
    erb :"ads/show.html"
  end

  #create
  
end
