class MessageController < ApplicationController
  get '/message/:ad_id/new' do
    @ad_id = params[:ad_id]
    erb :"/message/new"
  end

  post '/message' do

  end

  delete '/message/:id' do

  end   
end
