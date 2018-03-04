Rails.application.routes.draw do
  root to: "drawings#index"

  get "/drawings", to: "drawings#index", as: "drawings"

end
