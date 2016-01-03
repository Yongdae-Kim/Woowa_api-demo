Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :posts, only: :index
  end
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
