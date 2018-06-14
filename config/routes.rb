Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]
  get '/posts/:id', to: 'posts#show'
end