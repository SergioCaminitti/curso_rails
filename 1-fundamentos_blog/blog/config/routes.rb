Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get "up" => "rails/health#show", as: :rails_health_check
  get "inicio", controller: "home", action: "index", as: "home"
  get "estudante", to: "estudante#index", as: "estudantes"
  root "home#index"
end
