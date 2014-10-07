class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
  	if session[:counter].nil?
  		session[:counter] = 1 
  	else
  		session[:counter] += 1
  		session[:counter] = 1 if session[:counter] > 5
  	end
  	@products = Product.order(:title)
  end
end
