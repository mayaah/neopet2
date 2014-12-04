Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :pets
  resources :pet_pets

  patch '/battle', to: 'users#battle', as: 'battle'
  patch '/adopt', to: 'pets#adopt', as: 'adopt'
  patch '/feed', to: 'pets#feed', as: 'feed'
  get '/adoption_agency', to: 'pets#index', as: 'adoption_agency'
  get '/new_neopet', to: 'pets#new_neopet', as: 'new_neopet'
  post '/create', to: 'pets#create', as: 'create'
  get '/new_petpet', to: 'pet_pets#new_petpet', as: 'new_petpet'
  post '/createpetpet', to: 'pets#createpetpet', as: 'createpetpet'
end
