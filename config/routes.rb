Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :statistics, :orders, only: [:index]

  get '/get' => 'orders#create'
  get '/cancel/:id' => 'orders#cancel'
  get '/pay/:id' => 'orders#pay'
  get '/print/:id' => 'orders#print'
end
