class MessageController < ApplicationController
  get '/message/:ad_id/new' do
    @ad_id = params[:ad_id]
    erb :"/message/new"
  end

  post '/message' do
    @message = Message.create(params[:message])
    if @message.save
      flash[:notice] = "Message was sent!"
      @ad = Ad.find_by(id:params[:ad_id])
      @ad.messages << @message
      @message.ad = @ad
    else
      @ad_id = params[:ad_id]
      erb :'message/new'
    end 
  end

  delete '/message/:id' do
    begin
      @ad = Ad.find_by!(id:params[:ad_id])
      @message = @ad.messages.delete(params[:id])
      if @message.count == 1 && @message[0].destroyed?
        flash[:notice] = "Message is deleted!"
      else
        flash[:error] = "Message was not deleted!"
      end
    rescue ActiveRecord::RecordNotFound
      flash[:error] = "Ad not found!"
    ensure
      redirect request.env['HTTP_REFERER']
    end
  end
end
