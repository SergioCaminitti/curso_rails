class Game
  attr_accessor :title, :release_year, :features

  def initialize(title, release_year = nil, features = [])
    @title = title
    @release_year = release_year
    @features = features
  end
end
