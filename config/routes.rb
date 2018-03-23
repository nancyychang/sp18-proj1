Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers, :pokemons 

  get "/new", to: "pokemons#new", as: "new"
  post "/create", to: "pokemons#create", as: "create"

  patch "/capture", to: "pokemons#capture", as: "capture"
  get "/trainers/:id", to: "trainers#show"
  patch "/damage", to: "pokemons#damage", as: "damage"
end
