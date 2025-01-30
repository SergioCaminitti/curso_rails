class Stock
  attr_reader :games

  def initialize
    @games = {}
  end

  def add_game(title, quantity)
    @games[title] ||= 0
    @games[title] += quantity
  end

  def remove_game(title, quantity)
    @games[title] ||= 0
    @games[title] -= quantity if @games[title] >= quantity
  end

  def available?(title, quantity = 1)
    @games[title].to_i >= quantity
  end
end
