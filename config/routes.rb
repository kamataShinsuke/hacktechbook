Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  
  resources :users, only: [:show, :new, :create] 
  
  resources :books, only: [:show, :new]
  
  resources :ownerships, only: [:create, :destroy]
  
  get 'rankings/want', to: 'rankings#want'
  get 'rankings/have', to: 'rankings#have'
  get 'rankings/review', to: 'rankings#review'
  
  resources :reviews, only: [:create, :destroy]
  
  resources :my_conditions do
    get 'cities_select', on: :collection
  end

end