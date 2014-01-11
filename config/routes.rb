OpawardsAdmin::Application.routes.draw do
  
  root to: 'candidates#index'
 
  match '/signin', to: 'sessions#new', via: :get
  match '/signout', to: 'sessions#destroy', via: :delete
  
  resources :users, only: [:show, :index]
  resources :sessions, only: [:new, :create, :destroy]
  

  
  resources :candidates
  resources :winners
=begin  
  get '/candidates/:id', to: 'candidates#show'
  get '/new', to: 'candidates#new'
=end  
end
