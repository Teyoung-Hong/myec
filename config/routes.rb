Rails.application.routes.draw do


  get 'contacts/new'
  # devise
  devise_for :users, :controller => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  devise_for :admins, :controller => {
    :sessions => 'admins/sessions'
  }


  # common
  root 'products#index'
  get '/top' => 'users#top', as: 'top'
  get '/search' => 'products#index', as: 'search'
  resources :users, only: [:show, :edit, :update]
  resource :addresses, only: [:create, :update, :destroy]
  resources :carts, only: [:index, :show, :edit, :update]
  resources :products, only: [:show] do
    resources :carts, only: [:create, :destroy]
    resources :comments, only: [:create, :edit, :update, :destroy]	
    resource :favorites, only: [:create, :destroy] 
  end
  resources :orders, only: [:new, :create, :index]
  resources :ordered_products, only: [:new, :create, :show]
  resources :contacts, only: [:new, :create]



  # admin
  namespace :admins do
    resources :users, only: [:index]
    resources :products, only: [:new, :create, :edit, :update, :destroy]
    resources :contacts, only: [:index, :show, :edit, :update, :destroy] do
      resource :contact_replies, only: [:create]
    end
    resources :genres
  end


end
