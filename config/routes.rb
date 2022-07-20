Rails.application.routes.draw do
  resources :appointments
  root to: "appointments#index"
  get "/home" => "pages#home"
  get "/about" => "pages#about"
  get "/contact" => "pages#contact"
  get "/gallery" => "pages#gallery"
end
