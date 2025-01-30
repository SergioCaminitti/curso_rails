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
    @game = Game.new('The Legend of Zelda: Breath of the Wild', 2020, ['Open World', 'Action-Packed'])
  end

  context 'when dealing with PS5 games' do
    it 'should have a title' do
      # expect(@game.title).to eq('The Legend of Zelda: Breath of the Wild')
      expect(@game.title).to be_truthy
      # verifica se uma condição é verdadeira ou falsa
    end
    it 'shoul allow settings and updating the title' do
      @game.title = 'Demon\'s Souls'
      expect(@game.title).to eq('Demon\'s Souls')
      @game.title = 'Ratchet & Clank: Rift Apart'
      expect(@game.title).to eq('Ratchet & Clank: Rift Apart')
    end
    it 'should have a release year within a specif range' do
      expect(@game.release_year).to be_within(1).of(2020)
    end
    it 'should include specific features' do
      expect(@game.features).to include('Open World')
      expect(@game.features).to include('Action-Packed')
      # verifica se um elemento está presente em um array
    end
  end

  context 'role-playing games (RPGs)' do
    before(:each) do
      @rpg_game = Game.new('Final Fantasy VII Remake', 2020, ['Story-Rich', 'Turn-Based'])
    end

    it 'should have a title' do
      expect(@rpg_game.title).to be_truthy
    end
    it 'should have a release year within a specif range' do
      expect(@rpg_game.release_year).to be_within(1).of(2020)
    end
    it 'should include specific features' do
      expect(@rpg_game.features).to include('Story-Rich')
      expect(@rpg_game.features).to include('Turn-Based')
    end

  end
end
