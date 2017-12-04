Rails.application.routes.draw do

  resources :superpowers, only: [:index, :show]
  resources :superheroes, only: [:index, :show, :new, :create]

  # post '/search', to: 'superpowers#search', as: 'search'
  post '/search', to: 'superheroes#index'

end
