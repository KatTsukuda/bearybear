Rails.application.routes.draw do
  root to: 'drawings#index'
  get '/about' => 'about#about'
  get '/contact' => 'contact#index'
  get '/drawings' => 'drawings#index'
  get '/projects' => 'projects#index'
end
