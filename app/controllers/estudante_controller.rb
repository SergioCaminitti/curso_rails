class EstudanteController < ApplicationController
    def index
        @estudantes = [
            {nome: "Maria", idade: 23, curso: "Engenharia Civil"},
            {nome: "João", idade: 22, curso: "Engenharia de Produção"},
            {nome: "Pedro", idade: 24, curso: "Engenharia de Software"},
            {nome: "Ana", idade: 21, curso: "Engenharia de Alimentos"},
        ]
    end
end
