# Describe: Usado para descrever a classe que será testada
# Context: Usado para descrever o contexto do teste
# It: Usado para descrever o que o teste faz
# Expect: Usado para comparar o resultado esperado com o resultado obtido
# Eq: Usado para comparar o resultado esperado com o resultado obtido

require 'models/game'

RSpec.describe 'Game' do
  context 'when dealing with PS5 games' do
    it 'should have a title' do
      game = Game.new('Spider-Man: Miles Morales')
      expect(game.title).to eq('Spider-Man: Miles Morales')
    end
    it 'shoul allow settings and updating the title' do
      game2 = Game.new('Demon\'s Souls')
      expect(game2.title).to eq('Demon\'s Souls')

      game3 = Game.new('Ratchet & Clank: Rift Apart')
      expect(game3.title).to eq('Ratchet & Clank: Rift Apart')
    end
  end
end
