Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  resources :superheroes, only: [:index, :new, :create, :show]

  # get 'superheroes/search', to: "superheroes#search"

end
