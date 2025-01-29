Rails.application.routes.draw do
  get "search", to: "search#index"
  devise_for :users

  # /posts/1/comments/2
  resources :posts do
    resources :comments
  end

  get "inicio", controller: "home", action: "index", as: "home"
  # get "estudante", to: "estudante#index", as: "estudantes"

  root "home#index"

end
