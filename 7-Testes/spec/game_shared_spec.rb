require 'models/game'

RSpec.shared_examples 'a PS5 game' do
  let(:game) {@game}

  it 'should have a title' do
    expect(@game.title).to be_truthy
  end
  it 'should allow settings and updating the title' do
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
  end
end

RSpec.describe 'Game' do
  before(:each) do
    @game = Game.new('The Legend of Zelda: Breath of the Wild', 2020, ['Open World', 'Action-Packed'])
  end

  context 'when dealing with PS5 games' do
    include_examples 'a PS5 game', @game
  end

  context 'role-playing games (RPGs)' do
    before(:each) do
      @rpg_game = Game.new('Final Fantasy VII Remake', 2020, ['Story-Rich', 'Turn-Based'])
    end
    include_examples 'a PS5 game', @rpg_game
  end
end
