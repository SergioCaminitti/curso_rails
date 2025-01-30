# Describe: Usado para descrever a classe que será testada
# Context: Usado para descrever o contexto do teste
# It: Usado para descrever o que o teste faz
# Expect: Usado para comparar o resultado esperado com o resultado obtido
# Eq: Usado para comparar o resultado esperado com o resultado obtido

RSpec.describe 'Game' do
  context 'when dealing with PS5 games' do
    it 'should have a title' do
      game = Game.new('Spider-Man: Miles Morales')
      expect(game.title).to eq('Spider-Man: Miles Morales')
    end
  end
end
