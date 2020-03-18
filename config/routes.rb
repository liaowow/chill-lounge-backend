Rails.application.routes.draw do
  resources :boards, only: [:index, :create]
  resources :results, only: [:index, :create]
  resources :users, only: [:index, :create]

  post '/login', to: 'auth#login'
  get '/', to: 'auth#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end