Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "simple", controller: "simple", action: "hello"

  get "user/show/:id", to: "user#show", defaults: {format: "json"}

  get "simple/hello", defaults: {format: "json"}
  get "simple2", to: "simple#hello", defaults: {format: "json"}

  # No arquivo config/routes.rb, adicione rotas para as actions index e show.
  # A rota para index deve ser configurada para a URL /tasks.
  get "tasks", to: "tasks#index", defaults: {format: "json"}

  # A rota para show deve ser configurada para a URL /tasks/:id
  get "tasks/:id" , to: "tasks#show", defaults: {format: "json"}

end
