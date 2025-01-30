# Describe: Usado para descrever a classe que será testada
# Context: Usado para descrever o contexto do teste
# It: Usado para descrever o que o teste faz
# Expect: Usado para comparar o resultado esperado com o resultado obtido
# Eq: Usado para comparar o resultado esperado com o resultado obtido


#Before Hook
# Ele serve para configurar um estado inicial
# compartilhado entre os testes

require 'models/game'

RSpec.describe 'Game' do
  before(:each) do
    @game = Game.new('The Legend of Zelda: Breath of the Wild')
  end

  context 'when dealing with PS5 games' do
    it 'should have a title' do
      expect(@game.title).to eq('The Legend of Zelda: Breath of the Wild')
    end
    it 'shoul allow settings and updating the title' do
      @game.title = 'Demon\'s Souls'
      expect(@game.title).to eq('Demon\'s Souls')

      @game.title = 'Ratchet & Clank: Rift Apart'
      expect(@game.title).to eq('Ratchet & Clank: Rift Apart')
    end
  end
end
