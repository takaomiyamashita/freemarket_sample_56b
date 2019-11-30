Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:index, :edit]
  root to: "items#toppage"
  get 'index' => 'items#toppage'
  get '/users/info' => 'users#info'
  get 'users/card' => 'users#card'
  get '/users/card/create' => 'users#card_create'
  get '/users/logout' => 'users#log_out'
  get 'users/login' => 'users/login'
  get '/items/buy' => 'items#purchase'
  resources :items, only: [:show, :new]
  
  #mishima ユーザー新規登録 ページのルーティングを記述
  resources :signup do  
    collection do
      get 'member_information'
      get 'phone_number'
      get 'address'
      get 'card_information' 
      get 'end'
      get 'done'
      post 'address_create'
    end
  end
end