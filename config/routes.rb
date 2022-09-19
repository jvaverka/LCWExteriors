Rails.application.routes.draw do
  resources :appointments, except: [:destroy, :index, :update]
  root to: "pages#home"
  get "/home" => "pages#home"
  get "/about" => "pages#about"
  get "/contact" => "pages#contact"
  get "/gallery" => "pages#gallery"
end
