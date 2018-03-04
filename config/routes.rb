Rails.application.routes.draw do
  get 'shop/shop'

  get 'contact/contact'

  root to: 'drawings#index'
  get '/about' => 'about#about'
  get '/contact' => 'contact#contact'
  get '/drawings' => 'drawings#index'
  get '/shop' => 'shop#shop'
end
