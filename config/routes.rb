Rails.application.routes.draw do
  devise_for :users
  root "splash#index"
  
  resources :activities
  resources :categories
end
