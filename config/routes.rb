Rails.application.routes.draw do
  get '/' => 'home#home'
  get '/shops/:shop_id' => 'shop#shop'
  get '/shops/:shop_id/reviews' => 'shop#reviews'
  get '/shops/:shop_id/photos' => 'shop#photos'

  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }
end
