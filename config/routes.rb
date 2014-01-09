OpawardsAdmin::Application.routes.draw do
  
  root to: 'sessions#new'
  
  resources :users, only: [:show, :index]
  resources :sessions, only: [:new, :create, :destroy]
  
  match '/signin', to: 'sessions#new', via: :get
  get '/signout', to: 'sessions#destroy'
  
  resources :candidates
  resources :winners
=begin  
  get '/candidates/:id', to: 'candidates#show'
  get '/new', to: 'candidates#new'
=end  
end
