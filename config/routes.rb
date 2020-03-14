Rails.application.routes.draw do
  resources :boards, only: [:index]
  resources :results, only: [:index]
  resources :users, only: [:index, :create]

  post '/login', to: 'auth#login'
  get '/', to: 'auth#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end