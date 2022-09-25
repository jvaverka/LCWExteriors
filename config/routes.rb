Rails.application.routes.draw do
  resources :appointments, except: [:destroy, :index, :update]
  root to: "pages#home"
  get "/home" => "pages#home"
  get "/gallery" => "pages#gallery"
end
