class ShopController < ApplicationController
  def shop
    @shop = Yelp.get_business(params[:shop_id])
  end

  def reviews
    @current_tab = 'reviews'
    @reviews = Yelp.get_business_reviews(params[:shop_id])['reviews']
    shop
    render 'shop'
  end

  def photos
    @current_tab = 'photos'
    shop
    render 'shop'
  end
end
