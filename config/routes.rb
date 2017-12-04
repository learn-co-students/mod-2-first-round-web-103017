Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  resources :superheroes, only: [:index, :show, :new, :create, :edit, :update]
  get 'superpowers/search', to: 'superpowers#index', :as => 'search'
end
