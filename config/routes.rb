Rails.application.routes.draw do
  get 'home/index'
  resources :rooms
  resources :users

  root :to => "home#index"
end
