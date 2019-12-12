class AdsController < ApplicationController
  get '/ad/:id' do
    @ad = Ad.find_by(id:params[:id])
    if @ad.nil?
      flash[:error] = "Record Not Found!"
      redirect to("/")
    end
    erb :"ads/show.html"
  end
end
