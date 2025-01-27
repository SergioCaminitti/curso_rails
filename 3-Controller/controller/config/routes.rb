Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "simple", controller: "simple", action: "hello"

  get "user/show/:id", to: "user#show", defaults: {format: "json"}

  get "simple/hello", defaults: {format: "json"}
  get "simple2", to: "simple#hello", defaults: {format: "json"}

  get "tasks", to: "tasks#index"
  get "tasks/:id" , to: "tasks#show"

  resources :posts do
    member do
      get 'comments', to: 'posts#comments'
      # get 'new_comment', to: 'posts#new_comment'
      post 'create_comment', to: 'posts#create_comment'
    end
  end
end
