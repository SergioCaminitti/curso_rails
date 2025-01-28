class WelcomeController < ApplicationController
  before_action :initialize_produtos, only: [:index]

  def index
    # @produtos = [
    #   {nome: "Camiseta", preco: 19.99},
    #   {nome: "Calça Jeans", preco: 39.99},
    #   {nome: "Moletom", preco: 89.99},
    #   {nome: "Tênis", preco: 59.99}
    # ]
    @produtos = session[:produtos]
    puts @produtos.inspect
  end
  def adicionar_produto
    produto = {nome: params[:nome], preco: params[:preco].to_f}
    session[:produtos] << produto
    redirect_to root_path
  end

  private
  def initialize_produtos
    session[:produtos] ||= []
    @produtos = session[:produtos]
  end

end
