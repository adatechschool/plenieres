Rails.application.routes.draw do
  root to: 'pokemons#index'
  resources :pokemons
  delete 'remove_pokemon_category', to: 'pokemons#remove_category'
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
