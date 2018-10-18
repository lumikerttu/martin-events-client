require 'sidekiq/web'
Rails.application.routes.draw do
  get 'contact/index'
  get 'api/about'
  get 'api/haiku'
  devise_for :users
  mount Sidekiq::Web => '/sidekiq'
  resources :event_categories
  resources :categories
  root 'home#index'
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
