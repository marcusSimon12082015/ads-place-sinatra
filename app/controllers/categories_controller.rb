class CategoryController < ApplicationController
  get '/category/:id' do
    @category = Category.find_by_id(params[:id])
    @ads = @category.ads
    erb :"categories/show", :layout => :"home_category_layout"
  end
end
