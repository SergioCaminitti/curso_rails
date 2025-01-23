class HomeController < ApplicationController
    def index
        # @msg = "Estudando o Ruby on Rails"
        # render html: "<h2>Olá Mundo!<h2>".html_safe
        # render html: "<h2>#{@msg}</h2>".html_safe
        @author = "Claudinho beiramar" 
        @posts = [
            {title: "Rails", body: "Aprendendo com a OneBitCode"},
            {title: "Javascript", body: "Aprendendo com a OneBitCode"},
            {title: "Python", body: "Aprendendo com a OneBitCode"},
        ]
    end 
end