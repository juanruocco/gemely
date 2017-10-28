Rails.application.routes.draw do

  get 'sports/new'

  get 'sports/create'

  get 'sports/destroy'

  # get 'likes/new'
  #
  # get 'likes/create'
  #
  # get 'likes/destroy'
  #
  # get 'hobbies/new'
  #
  # get 'hobbies/create'
  #
  get 'compatibles' => 'likes#compatibles'

  post '/hobby' => 'hobbies#create'
  get  '/hobby' => 'hobbies#new'

  post '/sport' => 'sports#create'
  get  '/sport' => 'sports#new'

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'

  get  '/users/show' => 'users#show'
  get  '/signup' => 'users#new'
  post '/users' => 'users#create'
  #resources :users

  post '/likes' => 'likes#create'
  get  '/likes' => 'likes#index'

  get  '/compatibility' => 'compatibility#index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
