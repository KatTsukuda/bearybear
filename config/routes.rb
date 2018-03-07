Rails.application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  root to: 'drawings#index'
  get '/admin' => 'admin#show'
  get '/about' => 'about#about'
  get '/contact' => 'contact#contact'
  get '/drawings' => 'drawings#index'
  get '/drawings/new', to: 'drawings#new', as: 'new_drawing'
  post '/drawings', to: 'drawings#create'
  get '/drawings/:id', to: 'drawings#show'
  get '/drawings/:id/edit', to: 'drawings#edit', as: 'edit_drawing'
  get '/shop' => 'shop#shop'
end
