Rails.application.routes.draw do
  get "usuarios/cadastro"
  get "usuarios/confirmacao"
  get "exercicio1/index"
  # get "test", to: "welcome#index"
  # root "welcome#index"
  root "exercicio1#index"
  post "adicionar_usuario", to: "exercicio1#adicionar_usuario"

  post "adicionar_produto", to: "welcome#adicionar_produto"

  get "usuarios/cadastro", to: "usuarios#cadastro"
  post "usuarios/confirmacao", to: "usuarios#confirmacao"

end
