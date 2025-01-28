class Exercicio1Controller < ApplicationController
  before_action :initialize_usuarios, only: [:index]

  def index
    @usuarios = session[:usuarios]
    puts @usuarios.inspect
  end
  def adicionar_usuario
    usuario = {nome: params[:nome], email: params[:email], senha: params[:senha]}
    session[:usuarios] << usuario
    redirect_to root_path
  end

  private
  def initialize_usuarios
    # session[:usuarios] = []
    session[:usuarios] ||= []
    @usuarios = session[:usuarios]
  end

end
