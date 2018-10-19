Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]
  get '/posts/:id', to: 'posts#show', as: 'post'
end
