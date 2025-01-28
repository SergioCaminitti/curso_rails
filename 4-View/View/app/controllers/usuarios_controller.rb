class UsuariosController < ApplicationController
  def cadastro

  end

  def confirmacao
    @nome = params[:nome]
    @email = params[:email]
    @senha = params[:senha]
  end
end
