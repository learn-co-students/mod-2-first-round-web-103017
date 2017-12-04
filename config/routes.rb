Rails.application.routes.draw do
  resources :superpowers, only: [:index, :show]
  resources :superheroes

end
