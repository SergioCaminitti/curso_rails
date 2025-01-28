Rails.application.routes.draw do
  # get "test", to: "welcome#index"
  root "welcome#index"
  post "adicionar_produto", to: "welcome#adicionar_produto"

end
