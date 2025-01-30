require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'is valid with attributs' do
    movie = Movie.new(
     title: 'Movie Title',
     description: 'Movie Description',
     director: 'Movie Director',
     duration: 120
    )
    expect(movie).to be_valid
  end

  context "when there are movies with durations" do
    it "retur the correct average duration" do
      #criar alguns filmes com diferentes durações
      Movie.create(title: "Movie 1", duration: 90)
      Movie.create(title: "Movie 2", duration: 120)
      #calcular a média da duração
      average_duration = Movie.average_duration
      #verificar se a média da duração é calculada corretamente
      expect(average_duration).to eq(105)
    end
  end
end
