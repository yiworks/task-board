Rails.application.routes.draw do
  root 'tasks#index'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :tasks
  resources :users, except: :index

  namespace :admin do
    resources :users
  end
end
