Rails.application.routes.draw do
  resources :activities
  resources :categories

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users
  root "users#index"
end
