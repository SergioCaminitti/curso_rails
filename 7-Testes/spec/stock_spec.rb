require 'models/stock'

RSpec.shared_examples 'stock validations' do
  let(:stock) {@stock}
  # let(:stock) {described_class.new}

  it 'should have a stock' do
    expect(stock).to be_kind_of(Stock)
  end

  it 'should add a game' do
    @stock.add_game('God of War', 1)
    expect(@stock.games).to include('God of War' => 1)
  end

  # it 'should add a game' do
  #   @stock.add_game('God of War', 1)
  #   expect(@stock.games['God of War']).to eq(1)
  # end

  it 'should remove a game' do
    @stock.add_game('God of War', 2)
    @stock.remove_game('God of War', 1)
    expect(@stock.games).to include('God of War' => 1)
#   expect(@stock.games['God of War']).to eq(1)
  end

  it 'should available a game' do
    expect(@stock.available?('God of War', 1)) == false
    # @stock.add_game('God of War', 2)
    # expect(@stock.available?('God of War')).to be_truthy
  end
end

RSpec.describe 'Stock' do
  before(:each)do
    @stock = Stock.new
  end

  # include_examples 'stock validations'

  context 'when i get a new stock' do
    include_examples 'stock validations', @stock
  end

  context 'when i add a game on stock' do
    before(:each) do
       @add_stock = Stock.new.add_game('Batata', 1)
    end
    include_examples 'stock validations', @add_stock
  end

  context 'when i remove a game on stock' do
    before(:each) do
       @add_stock = Stock.new.add_game('Batata', 2).remove_game('Batata', 1)
    end
    include_examples 'stock validations', @add_stock
  end

end
