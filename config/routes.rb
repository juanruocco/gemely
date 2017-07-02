Rails.application.routes.draw do

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

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'

  get  '/signup' => 'users#new'
  post '/users' => 'users#create'

  post '/likes' => 'likes#create'
  get  '/likes' => 'likes#index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
