Rails.application.routes.draw do
  devise_for :users
 
  get '/activities/index/:category_id', to: "activity#index", as: 'activity_index'
  get '/activities/show/:activity_id/:category_id', to: "activity#show", as: 'activity_detail'
  get '/activities/new/:category_id', to: "activity#new", as: 'activity_new'
  post '/activities/new', to: "activity#create", as: 'activity_create'
  resources :categories

  root "splash#index"
end
