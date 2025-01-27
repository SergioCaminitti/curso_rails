class SimpleController < ApplicationController
  def hello
    render json:{
      message: "Olá, este é um exemplo simples sem view!"
    }
  end
end
