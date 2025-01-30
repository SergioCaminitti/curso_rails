class Game
  # attr_accessor :title, :release_year, :features
  attr_accessor :title, :age_rating

  # def initialize(title, release_year = nil, features = [])
  #   @title = title
  #   @release_year = release_year
  #   @features = features
  # end

  def initialize(title, age_rating)
    @title = title
    @age_rating = age_rating
  end
end
