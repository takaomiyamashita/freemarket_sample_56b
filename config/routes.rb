Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :edit]
  root to: "items#toppage"
  get 'index' => 'items#toppage'
  get '/users/info' => 'users#info'
  get 'users/:id/card' => 'users#card'
  get '/users/:id/card/create' => 'users#card_create'
  get '/users/logout' => 'users#log_out'
  get '/users/user_reg'
  get '/users/user_reg2'
  get '/users/user_reg3'
  get '/users/user_reg4'
  get '/users/user_reg5'
  get '/users/user_sign_up'
  get 'users/login' => 'users/login'

  resources :items, only: [:show, :new]
end