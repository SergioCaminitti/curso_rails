require "models/game"

RSpec::Matchers.define :be_adult_only do
    match do |game|
      game.age_rating >= 18
    end

    failure_message do |game|
      "Expected #{game.title}
 to be recommended for adults only
 (age rating >= 18), but it has an age rating of #{game.age_rating}."
    end

    failure_message_when_negated do |game|
      "Expected #{game.title}
      not to be recommended for adults only (age rating < 18),
      but it has an age rating of #{game.age_rating}."
    end
  end

  # Exemplo de uso do custom matcher
  RSpec.describe 'Game' do
    let(:adult_game) { Game.new('GTA V', 18) }
    let(:non_adult_game) { Game.new('Super Mario Odyssey', 6) }

    it 'should be recommended for adults only
     if age rating is >= 18' do
      expect(adult_game).to be_adult_only
    end

    it 'should not be recommended for adults only
     if age rating is < 18' do
      expect(non_adult_game).not_to be_adult_only
    end
  end
