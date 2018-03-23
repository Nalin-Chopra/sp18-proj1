Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  resources :pokemons
  patch "/capture/:id", to: "pokemons#capture", as: "capture"
  patch "/damage/:id", to: "trainers#damage", as: "damage"
end
