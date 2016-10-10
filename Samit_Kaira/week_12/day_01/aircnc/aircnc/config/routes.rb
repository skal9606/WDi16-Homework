Rails.application.routes.draw do

  root :to => 'houses#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  resources :houses, :comments, :bookings, :users
end
