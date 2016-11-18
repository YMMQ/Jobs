Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :user_infos
  resources :educations
  resources :experiences
  devise_for :users
  resources :institutes
  resources :degrees
  resources :t_degrees
  resources :add_professions
  resources :professions
  resources :addvs
  resources :organizations
  resources :newspapers
  resources :cities
  resources :provinces
  get 'static_pages/home'
  root to: "home#index"
  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
