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
end
