# frozen_string_literal: true

Rails.application.routes.draw do
  root 'rounds#index'

  resources :players
  resources :rounds, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
