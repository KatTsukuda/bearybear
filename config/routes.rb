Rails.application.routes.draw do
  root "drawings#index"

  get "/drawings", to: "drawings#index", as: "drawings"
  
end
