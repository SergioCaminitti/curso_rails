Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "home", controller: "home", action: "index"
  get "estudantes", to: "estudante#index"
end
