Rails.application.routes.draw do
  resources :widgets

  resources :benefits

  resources :subscribers

  resources :benefits_coordinations

  resources :dependants

  resources :coordination_of_benefitsses

  resources :coordination_of_benefitses

  resources :contacts

  resources :sponsors

  resources :addresses

  resources :payers

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :managers
end
